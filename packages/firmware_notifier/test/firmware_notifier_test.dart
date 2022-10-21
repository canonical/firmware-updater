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
          flags: {FwupdReleaseFlag.isUpgrade},
        ),
        FwupdRelease(
          name: 'oldRelease',
        )
      ],
    };

    final client = MockFwupdClient();
    when(client.getDevices()).thenAnswer((_) async => devices);
    when(client.getReleases('0')).thenAnswer((_) async => releases['0']!);

    final updates = await getUpdates(client);
    expect(updates.length, 1);
    expect(updates.entries.first.key, devices.first);
    expect(
        updates.entries.first.value, releases[devices.first.deviceId]!.first);
  });

  test('show notifications', () {
    final client = MockNotificationsClient();
    when(client.notify(any,
            actions: anyNamed('actions'),
            appIcon: 'software-update-available',
            body: anyNamed('body')))
        .thenAnswer((_) async => Notification(NotificationsClient(), 0));
    final updates = {
      FwupdDevice(deviceId: '0', name: 'a', plugin: ''): FwupdRelease(
          name: 'newRelease_a', flags: {FwupdReleaseFlag.isUpgrade}),
      FwupdDevice(deviceId: '1', name: 'b', plugin: ''): FwupdRelease(
          name: 'newRelease_b', flags: {FwupdReleaseFlag.isUpgrade}),
    };

    sendUpdateNotifications(client, updates);
    verify(client.notify(any,
            actions: anyNamed('actions'),
            appIcon: 'software-update-available',
            body: anyNamed('body')))
        .called(2);
  });
}
