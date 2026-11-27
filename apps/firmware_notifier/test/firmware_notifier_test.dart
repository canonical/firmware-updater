import 'dart:async';

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

  setUp(() async {
    harness = await NotifierTestHarness.start();
    fwupd = MockFwupdClient();
  });

  tearDown(() => harness.close());

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

    final run = runNotifier(fwupd, harness.bus);
    final notifications = await harness.notifications.received.take(2).toList();

    expect(notifications, hasLength(2));

    final notificationA = notifications.singleWhere(
      (n) => n.summary == 'Firmware update available for Device A',
    );
    expect(
      notificationA.body,
      'Device A can be upgraded from version 1.0 to 2.0.',
    );
    expect(notificationA.actions, {'a-id, 2.0': 'Install'});
    expect(
      notificationA.hints['desktop-entry'],
      DBusString(desktopEntryName),
    );
    expect(notificationA.appName, 'Firmware Updater');
    expect(notificationA.appIcon, 'software-update-available');

    final notificationB = notifications.singleWhere(
      (n) => n.summary == 'Firmware update available for Device B',
    );
    expect(notificationB.actions, {'b-id, 4.0': 'Install'});

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

    await runNotifier(fwupd, harness.bus);

    expect(harness.notifications.notifications, isEmpty);
  });

  test('sends nothing when fwupd has nothing to do', () async {
    when(fwupd.getDevices()).thenAnswer(
      (_) => Future<List<FwupdDevice>>.error(const FwupdNothingToDoException()),
    );

    await runNotifier(fwupd, harness.bus);

    expect(harness.notifications.notifications, isEmpty);
  });

  test('Install opens the app with the device ID and version', () async {
    final deviceA = device(id: 'a-id', name: 'Device A');
    await stubUpdates({
      deviceA: [release('2.0')],
    });

    final run = runNotifier(fwupd, harness.bus);
    final notification = await harness.notifications.received.first;

    await harness.notifications.emitActionInvoked(
      notification.id,
      notification.actions.keys.single,
    );
    await harness.notifications.emitNotificationClosed(notification.id);
    await run;

    expect(harness.application.commandLines, [
      ['a-id', '2.0'],
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
    ).whenComplete(() => finished = true);
    final notification = await harness.notifications.received.first;
    final launchReceived = harness.application.received.first;

    await harness.notifications.emitActionInvoked(
      notification.id,
      notification.actions.keys.single,
    );
    await harness.notifications.emitNotificationClosed(notification.id);

    // The app has the call but has not answered it yet.
    await launchReceived;
    expect(finished, isFalse);

    gate.complete();
    await run.timeout(const Duration(seconds: 5));
    expect(finished, isTrue);
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
}
