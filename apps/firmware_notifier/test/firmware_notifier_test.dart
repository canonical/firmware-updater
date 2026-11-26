import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dbus/dbus.dart';
import 'package:firmware_notifier/firmware_notifier.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'firmware_notifier_test.mocks.dart';
import 'notifier_test_harness.dart';

@GenerateMocks([FwupdClient])
void main() {
  late NotifierTestHarness harness;
  late MockFwupdClient fwupd;
  late Directory dismissalsDirectory;

  setUp(() async {
    harness = await NotifierTestHarness.start();
    fwupd = MockFwupdClient();
    dismissalsDirectory = await Directory.systemTemp.createTemp(
      'firmware_notifier_test',
    );
  });

  tearDown(() async {
    await harness.close();
    await dismissalsDirectory.delete(recursive: true);
  });

  FwupdDevice device({
    required String id,
    required String name,
    String version = '1.0',
  }) {
    return FwupdDevice(
      deviceId: id,
      name: name,
      plugin: '',
      version: version,
    );
  }

  FwupdRelease release(String version, {bool upgrade = true}) {
    return FwupdRelease(
      name: 'release-$version',
      version: version,
      flags: upgrade ? const {FwupdReleaseFlag.isUpgrade} : const {},
    );
  }

  Future<void> stubUpdates(
    Map<FwupdDevice, List<FwupdRelease>> releases,
  ) async {
    when(
      fwupd.getDevices(),
    ).thenAnswer((_) async => releases.keys.toList());
    for (final entry in releases.entries) {
      when(
        fwupd.getReleases(entry.key.deviceId),
      ).thenAnswer((_) async => entry.value);
    }
  }

  String actionKey(FakeNotification notification, String label) {
    for (final MapEntry(:key, :value) in notification.actions.entries) {
      if (value == label) return key;
    }
    fail('No action labelled $label');
  }

  File dismissalsFile() => File('${dismissalsDirectory.path}/dismissals.json');

  Future<Map<String, dynamic>?> readDismissals() async {
    final file = dismissalsFile();
    if (!await file.exists()) {
      return null;
    }
    return jsonDecode(await file.readAsString()) as Map<String, dynamic>;
  }

  Future<List<Map<String, dynamic>>> readDismissalEntries() async {
    final dismissals = await readDismissals();
    if (dismissals == null) {
      return [];
    }
    return (dismissals['dismissals'] as List).cast<Map<String, dynamic>>();
  }

  Future<void> seedDismissals(List<Map<String, String>> entries) async {
    await dismissalsDirectory.create(recursive: true);
    await dismissalsFile().writeAsString(
      jsonEncode({'version': 1, 'dismissals': entries}),
    );
  }

  test(
    "Don't Remind Me dismisses that update and closes the notification",
    () async {
      final deviceA = device(id: 'a-id', name: 'Device A');
      await stubUpdates({
        deviceA: [release('2.0')],
      });

      final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
      final notification = await harness.notifications.received.first;

      final dismissKey = actionKey(notification, "Don't Remind Me");
      expect(dismissKey, 'dismissal/a-id/2.0');
      await harness.notifications.emitActionInvoked(
        notification.id,
        dismissKey,
      );
      await run.timeout(const Duration(seconds: 5));

      expect(harness.notifications.notifications, isEmpty);
      expect((await readDismissals())?['version'], 1);
      expect(await readDismissalEntries(), [
        {'deviceId': 'a-id', 'version': '2.0'},
      ]);
    },
  );

  test(
    'GNOME closing a Dismissed notification itself still writes the entry and waits',
    () async {
      final deviceA = device(id: 'a-id', name: 'Device A');
      final deviceB = device(id: 'b-id', name: 'Device B');
      await stubUpdates({
        deviceA: [release('2.0')],
        deviceB: [release('3.0')],
      });
      harness.notifications.closeOnActionInvoked = true;

      final received = harness.notifications.received.take(2).toList();
      var finished = false;
      final run = runNotifier(
        fwupd,
        harness.bus,
        dismissalsDirectory,
      ).whenComplete(() => finished = true);
      final notifications = await received;

      final notificationA = notifications.singleWhere(
        (n) => n.summary == 'Firmware update available for Device A',
      );
      final notificationB = notifications.singleWhere(
        (n) => n.summary == 'Firmware update available for Device B',
      );

      await harness.notifications.emitActionInvoked(
        notificationA.id,
        actionKey(notificationA, "Don't Remind Me"),
      );
      // The server has closed A and would reject a second CloseNotification.
      // Give the action handler time to try, then check the run keeps waiting.
      await Future<void>.delayed(const Duration(milliseconds: 100));

      expect(await readDismissalEntries(), [
        {'deviceId': 'a-id', 'version': '2.0'},
      ]);
      expect(finished, isFalse);

      await harness.notifications.emitNotificationClosed(notificationB.id);
      await run.timeout(const Duration(seconds: 5));
      expect(finished, isTrue);
    },
  );

  test(
    'a second run sends nothing for a Dismissed update but notifies other devices',
    () async {
      await seedDismissals([
        {'deviceId': 'a-id', 'version': '2.0'},
      ]);
      final deviceA = device(id: 'a-id', name: 'Device A');
      final deviceB = device(id: 'b-id', name: 'Device B', version: '3.0');
      await stubUpdates({
        deviceA: [release('2.0')],
        deviceB: [release('4.0')],
      });

      final received = <FakeNotification>[];
      final subscription = harness.notifications.received.listen(received.add);
      final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
      final notification = await harness.notifications.received.first;

      expect(
        notification.summary,
        'Firmware update available for Device B',
      );
      await harness.notifications.emitNotificationClosed(notification.id);
      await run.timeout(const Duration(seconds: 5));
      await subscription.cancel();

      expect(
        received.map((n) => n.summary),
        ['Firmware update available for Device B'],
      );
    },
  );

  test(
    'a different Latest update version for a Dismissed device notifies',
    () async {
      await seedDismissals([
        {'deviceId': 'a-id', 'version': '2.0'},
      ]);
      final deviceA = device(id: 'a-id', name: 'Device A');
      await stubUpdates({
        deviceA: [release('2.1')],
      });

      final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
      final notification = await harness.notifications.received.first;

      expect(notification.actions.keys, [
        'install/a-id/2.1',
        'dismissal/a-id/2.1',
      ]);
      await harness.notifications.emitNotificationClosed(notification.id);
      await run;
    },
  );

  test(
    'a Dismissed Latest update stays silent even if an older upgrade exists',
    () async {
      await seedDismissals([
        {'deviceId': 'a-id', 'version': '3.0'},
      ]);
      final deviceA = device(id: 'a-id', name: 'Device A');
      await stubUpdates({
        deviceA: [release('3.0'), release('2.0')],
      });

      await runNotifier(fwupd, harness.bus, dismissalsDirectory);

      expect(harness.notifications.notifications, isEmpty);
    },
  );

  test(
    'identical device models with different device IDs are independent',
    () async {
      await seedDismissals([
        {'deviceId': 'dock-1', 'version': '2.0'},
      ]);
      final firstDock = device(id: 'dock-1', name: 'Dock');
      final secondDock = device(id: 'dock-2', name: 'Dock');
      await stubUpdates({
        firstDock: [release('2.0')],
        secondDock: [release('2.0')],
      });

      final received = <FakeNotification>[];
      final subscription = harness.notifications.received.listen(received.add);
      final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
      final notification = await harness.notifications.received.first;

      await harness.notifications.emitNotificationClosed(notification.id);
      await run.timeout(const Duration(seconds: 5));
      await subscription.cancel();

      expect(received, hasLength(1));
      expect(received.single.actions.keys, [
        'install/dock-2/2.0',
        'dismissal/dock-2/2.0',
      ]);
    },
  );

  test('notifies each device Latest update', () async {
    final deviceA = device(id: 'a-id', name: 'Device A');
    final deviceB = device(id: 'b-id', name: 'Device B', version: '3.0');
    await stubUpdates({
      deviceA: [
        release('2.1', upgrade: false),
        release('2.0'),
        release('1.5'),
      ],
      deviceB: [release('4.0'), release('3.5', upgrade: false)],
    });

    final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
    final notifications = await harness.notifications.received.take(2).toList();

    expect(notifications, hasLength(2));

    final notificationA = notifications.singleWhere(
      (n) => n.summary == 'Firmware update available for Device A',
    );
    expect(
      notificationA.body,
      'Device A can be upgraded from version 1.0 to 2.0.',
    );
    expect(notificationA.actions, {
      'install/a-id/2.0': 'Install',
      'dismissal/a-id/2.0': "Don't Remind Me",
    });
    expect(
      notificationA.hints['desktop-entry'],
      DBusString(desktopEntryName),
    );
    expect(notificationA.appName, 'Firmware Updater');
    expect(notificationA.appIcon, 'software-update-available');

    final notificationB = notifications.singleWhere(
      (n) => n.summary == 'Firmware update available for Device B',
    );
    expect(
      notificationB.body,
      'Device B can be upgraded from version 3.0 to 4.0.',
    );
    expect(notificationB.actions, {
      'install/b-id/4.0': 'Install',
      'dismissal/b-id/4.0': "Don't Remind Me",
    });

    for (final notification in notifications) {
      await harness.notifications.emitNotificationClosed(notification.id);
    }
    await run;
  });

  test('sends nothing when there is no Latest update', () async {
    final noUpgrade = device(id: 'no-upgrade', name: 'No Upgrade');
    final nothingToDo = device(id: 'nothing-to-do', name: 'Nothing To Do');
    final notSupported = device(id: 'not-supported', name: 'Not Supported');
    when(
      fwupd.getDevices(),
    ).thenAnswer((_) async => [noUpgrade, nothingToDo, notSupported]);
    when(
      fwupd.getReleases(noUpgrade.deviceId),
    ).thenAnswer((_) async => [release('2.0', upgrade: false)]);
    when(fwupd.getReleases(nothingToDo.deviceId)).thenAnswer(
      (_) => Future<List<FwupdRelease>>.error(
        const FwupdNothingToDoException(),
      ),
    );
    when(fwupd.getReleases(notSupported.deviceId)).thenAnswer(
      (_) => Future<List<FwupdRelease>>.error(
        const FwupdNotSupportedException(),
      ),
    );

    await runNotifier(fwupd, harness.bus, dismissalsDirectory);

    expect(harness.notifications.notifications, isEmpty);
  });

  test('sends nothing when fwupd has nothing to do', () async {
    when(fwupd.getDevices()).thenAnswer(
      (_) => Future<List<FwupdDevice>>.error(const FwupdNothingToDoException()),
    );

    await runNotifier(fwupd, harness.bus, dismissalsDirectory);

    expect(harness.notifications.notifications, isEmpty);
  });

  test(
    'Install opens the app with the device ID and version and writes nothing',
    () async {
      final deviceA = device(id: 'a-id', name: 'Device A');
      await stubUpdates({
        deviceA: [release('2.0')],
      });

      final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
      final notification = await harness.notifications.received.first;

      expect(actionKey(notification, 'Install'), 'install/a-id/2.0');
      await harness.notifications.emitActionInvoked(
        notification.id,
        actionKey(notification, 'Install'),
      );
      await harness.notifications.emitNotificationClosed(notification.id);
      await run;

      expect(harness.application.commandLines, [
        ['a-id', '2.0'],
      ]);
      expect(await readDismissals(), isNull);
    },
  );

  test('closing with the X writes no dismissal for any close reason', () async {
    final deviceA = device(id: 'a-id', name: 'Device A');
    final deviceB = device(id: 'b-id', name: 'Device B');
    final deviceC = device(id: 'c-id', name: 'Device C');
    await stubUpdates({
      deviceA: [release('2.0')],
      deviceB: [release('2.0')],
      deviceC: [release('2.0')],
    });

    final received = harness.notifications.received.take(3).toList();
    final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
    final notifications = await received;

    for (final (index, notification) in notifications.indexed) {
      await harness.notifications.emitNotificationClosed(
        notification.id,
        reason: index + 1,
      );
    }
    await run;

    expect(await readDismissals(), isNull);
  });

  test('existing dismissals are kept when a new one is added', () async {
    await seedDismissals([
      {'deviceId': 'a-id', 'version': '2.0'},
    ]);
    final deviceB = device(id: 'b-id', name: 'Device B');
    await stubUpdates({
      deviceB: [release('3.0')],
    });

    final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
    final notification = await harness.notifications.received.first;

    await harness.notifications.emitActionInvoked(
      notification.id,
      actionKey(notification, "Don't Remind Me"),
    );
    await run;

    expect(await readDismissalEntries(), [
      {'deviceId': 'a-id', 'version': '2.0'},
      {'deviceId': 'b-id', 'version': '3.0'},
    ]);
  });

  test('the run waits for the app launch to finish', () async {
    final deviceA = device(id: 'a-id', name: 'Device A');
    await stubUpdates({
      deviceA: [release('2.0')],
    });

    final gate = Completer<void>();
    harness.application.responseGate = gate.future;

    var finished = false;
    final run = runNotifier(
      fwupd,
      harness.bus,
      dismissalsDirectory,
    ).whenComplete(() => finished = true);
    final notification = await harness.notifications.received.first;
    final launchReceived = harness.application.received.first;

    await harness.notifications.emitActionInvoked(
      notification.id,
      actionKey(notification, 'Install'),
    );
    await harness.notifications.emitNotificationClosed(notification.id);

    // The app has the call but has not answered it yet.
    await launchReceived;
    expect(finished, isFalse);

    gate.complete();
    await run.timeout(const Duration(seconds: 5));
    expect(finished, isTrue);
  });

  for (final (description, contents) in [
    ('non-JSON', 'this is not JSON'),
    ('wrong-shape', jsonEncode({'version': 1, 'dismissals': 'not a list'})),
  ]) {
    test(
      'a $description dismissals file still notifies and logs the error',
      () async {
        final deviceA = device(id: 'a-id', name: 'Device A');
        await stubUpdates({
          deviceA: [release('2.0')],
        });
        await dismissalsFile().writeAsString(contents);

        final captured = await _captureStderr(() async {
          final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
          final notification = await harness.notifications.received.first;
          expect(
            notification.summary,
            'Firmware update available for Device A',
          );

          await harness.notifications.emitNotificationClosed(notification.id);
          await run.timeout(const Duration(seconds: 5));
        });

        expect(captured, contains('dismissals file'));
      },
    );
  }

  test(
    'an unknown dismissals version still notifies and logs the error',
    () async {
      final deviceA = device(id: 'a-id', name: 'Device A');
      await stubUpdates({
        deviceA: [release('2.0')],
      });
      await dismissalsFile().writeAsString(
        jsonEncode({
          'version': 2,
          'dismissals': [
            {'deviceId': 'a-id', 'version': '2.0'},
          ],
        }),
      );

      final captured = await _captureStderr(() async {
        // The dismissal in the unknown-version file must be ignored, so the
        // device still notifies.
        final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
        final notification = await harness.notifications.received.first;
        expect(notification.actions.keys, [
          'install/a-id/2.0',
          'dismissal/a-id/2.0',
        ]);

        await harness.notifications.emitNotificationClosed(notification.id);
        await run.timeout(const Duration(seconds: 5));
      });

      expect(captured, contains('dismissals file'));
    },
  );

  test(
    "Don't Remind Me over a corrupt dismissals file writes a valid file",
    () async {
      final deviceA = device(id: 'a-id', name: 'Device A');
      await stubUpdates({
        deviceA: [release('2.0')],
      });
      await dismissalsFile().writeAsString('this is not JSON');

      final captured = await _captureStderr(() async {
        final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
        final notification = await harness.notifications.received.first;
        await harness.notifications.emitActionInvoked(
          notification.id,
          actionKey(notification, "Don't Remind Me"),
        );
        await run.timeout(const Duration(seconds: 5));
      });

      expect(captured, contains('dismissals file'));
      expect(await readDismissals(), {
        'version': 1,
        'dismissals': [
          {'deviceId': 'a-id', 'version': '2.0'},
        ],
      });
    },
  );

  test(
    'a write failure is logged, closes the notification and finishes the run',
    () async {
      final deviceA = device(id: 'a-id', name: 'Device A');
      await stubUpdates({
        deviceA: [release('2.0')],
      });
      // A read-only directory makes both the temporary file write and the
      // rename fail.
      await Process.run('chmod', ['500', dismissalsDirectory.path]);

      try {
        final captured = await _captureStderr(() async {
          final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
          final notification = await harness.notifications.received.first;
          await harness.notifications.emitActionInvoked(
            notification.id,
            actionKey(notification, "Don't Remind Me"),
          );
          await run.timeout(const Duration(seconds: 5));

          expect(harness.notifications.notifications, isEmpty);
          expect(await dismissalsFile().exists(), isFalse);
        });

        expect(captured, contains('failed to write dismissals file'));
      } finally {
        await Process.run('chmod', ['700', dismissalsDirectory.path]);
      }
    },
  );

  test('a missing dismissals file still notifies every device', () async {
    final deviceA = device(id: 'a-id', name: 'Device A');
    final deviceB = device(id: 'b-id', name: 'Device B', version: '3.0');
    await stubUpdates({
      deviceA: [release('2.0')],
      deviceB: [release('4.0')],
    });
    expect(await dismissalsFile().exists(), isFalse);

    final received = harness.notifications.received.take(2).toList();
    final run = runNotifier(fwupd, harness.bus, dismissalsDirectory);
    final notifications = await received;

    expect(
      notifications.map((notification) => notification.summary),
      unorderedEquals([
        'Firmware update available for Device A',
        'Firmware update available for Device B',
      ]),
    );

    for (final notification in notifications) {
      await harness.notifications.emitNotificationClosed(notification.id);
    }
    await run.timeout(const Duration(seconds: 5));
  });

  test('the run finishes only once every notification is closed', () async {
    final deviceA = device(id: 'a-id', name: 'Device A');
    final deviceB = device(id: 'b-id', name: 'Device B');
    await stubUpdates({
      deviceA: [release('2.0')],
      deviceB: [release('2.0')],
    });

    var finished = false;
    final run = runNotifier(
      fwupd,
      harness.bus,
      dismissalsDirectory,
    ).whenComplete(() => finished = true);
    final notifications = await harness.notifications.received.take(2).toList();

    expect(finished, isFalse);

    await harness.notifications.emitNotificationClosed(notifications[0].id);
    await Future<void>.delayed(const Duration(milliseconds: 100));
    expect(finished, isFalse);

    await harness.notifications.emitNotificationClosed(
      notifications[1].id,
      reason: 2,
    );
    await run.timeout(const Duration(seconds: 5));
    expect(finished, isTrue);
  });

  group('defaultDismissalsDirectory', () {
    test(r'is $SNAP_USER_COMMON inside the snap', () {
      expect(
        defaultDismissalsDirectory({
          'SNAP_USER_COMMON': '/home/user/snap/firmware-updater/common',
          'XDG_DATA_HOME': '/home/user/data',
          'HOME': '/home/user',
        }).path,
        '/home/user/snap/firmware-updater/common',
      );
    });

    test(r'falls back to $XDG_DATA_HOME outside the snap', () {
      for (final snapUserCommon in [null, '']) {
        expect(
          defaultDismissalsDirectory({
            'SNAP_USER_COMMON': ?snapUserCommon,
            'XDG_DATA_HOME': '/home/user/data',
            'HOME': '/home/user',
          }).path,
          '/home/user/data/firmware-updater',
        );
      }
    });

    test(r'falls back to ~/.local/share without $XDG_DATA_HOME', () {
      for (final xdgDataHome in [null, '']) {
        expect(
          defaultDismissalsDirectory({
            'XDG_DATA_HOME': ?xdgDataHome,
            'HOME': '/home/user',
          }).path,
          '/home/user/.local/share/firmware-updater',
        );
      }
    });
  });
}

/// Runs [body] while capturing what the notifier writes to stderr.
Future<String> _captureStderr(Future<void> Function() body) async {
  final captured = _CapturedStderr();
  await IOOverrides.runZoned(body, stderr: () => captured);
  final text = captured.text;
  await captured.close();
  return text;
}

/// A stderr sink that keeps everything written to it in memory.
class _CapturedStderr implements Stdout {
  final _buffer = StringBuffer();

  String get text => _buffer.toString();

  @override
  void write(Object? object) => _buffer.write(object);

  @override
  void writeln([Object? object = '']) => _buffer.writeln(object);

  @override
  void writeAll(Iterable<dynamic> objects, [String separator = '']) =>
      _buffer.writeAll(objects, separator);

  @override
  void writeCharCode(int charCode) => _buffer.writeCharCode(charCode);

  @override
  Future<void> close() async {}

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
