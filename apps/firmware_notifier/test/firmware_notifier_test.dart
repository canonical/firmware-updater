import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:firmware_notifier/firmware_notifier.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'firmware_notifier_test.mocks.dart';

@GenerateMocks([NotificationsClient, FwupdClient])
void main() {
  test('get updates', () async {
    final devices = [
      FwupdDevice(deviceId: '0', name: 'a', plugin: ''),
    ];
    final releases = {
      '0': [
        FwupdRelease(
          name: 'newRelease',
          flags: const {FwupdReleaseFlag.isUpgrade},
        ),
        FwupdRelease(
          name: 'oldRelease',
        ),
      ],
    };

    final client = MockFwupdClient();
    when(client.getDevices()).thenAnswer((_) async => devices);
    when(client.getReleases('0')).thenAnswer((_) async => releases['0']!);

    final updates = await getUpdates(client);
    expect(updates.length, 1);
    expect(updates.entries.first.key, devices.first);
    expect(
      updates.entries.first.value,
      releases[devices.first.deviceId]!.first,
    );
  });

  test('show notifications', () {
    final client = MockNotificationsClient();
    when(
      client.notify(
        any,
        actions: anyNamed('actions'),
        appName: 'Firmware Updater',
        appIcon: 'software-update-available',
        hints: anyNamed('hints'),
        body: anyNamed('body'),
      ),
    ).thenAnswer((_) async => Notification(NotificationsClient(), 0));
    final updates = {
      FwupdDevice(deviceId: '0', name: 'a', plugin: ''): FwupdRelease(
        name: 'newRelease_a',
        flags: const {FwupdReleaseFlag.isUpgrade},
      ),
      FwupdDevice(deviceId: '1', name: 'b', plugin: ''): FwupdRelease(
        name: 'newRelease_b',
        flags: const {FwupdReleaseFlag.isUpgrade},
      ),
    };

    sendUpdateNotifications(client, updates);
    final captured = verify(
      client.notify(
        any,
        actions: anyNamed('actions'),
        appName: 'Firmware Updater',
        appIcon: 'software-update-available',
        hints: captureAnyNamed('hints'),
        body: anyNamed('body'),
      ),
    ).captured;
    expect(captured, hasLength(2));
    for (final hints in captured) {
      expect(
        (hints as List<NotificationHint>).map((h) => h.key),
        contains('desktop-entry'),
      );
    }
  });

  test('no detected devices', () async {
    final client = MockFwupdClient();
    when(client.getDevices()).thenAnswer((_) async {
      throw const FwupdNothingToDoException();
      // ignore: dead_code
      return []; // the mock needs the correct return type
    });

    final updates = await getUpdates(client);
    expect(updates, isEmpty);
  });
}
