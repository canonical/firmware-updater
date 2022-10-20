import 'package:collection/collection.dart';
import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:fwupd/fwupd.dart';

Future<Map<FwupdDevice, FwupdRelease>> getUpdates() async {
  final fwupdClient = FwupdClient();
  await fwupdClient.connect();

  final devices = await fwupdClient.getDevices();
  final updates = {
    for (final device in devices)
      device: (await fwupdClient.getReleases(device.deviceId).catchError(
              (_) => <FwupdRelease>[],
              test: (e) =>
                  e is FwupdNothingToDoException ||
                  e is FwupdNotSupportedException))
          .firstWhereOrNull(
        (r) => r.flags.contains(FwupdReleaseFlag.isUpgrade),
      )
  }..removeWhere((_, update) => update == null);
  await fwupdClient.close();
  return Map<FwupdDevice, FwupdRelease>.from(updates);
}

Future<List<Notification>> sendUpdateNotifications(
    NotificationsClient client) async {
  final updates = await getUpdates();

  return Future.wait(updates.entries.map(
    (e) => client.notify(
      'Firmware update available for ${e.key.name}',
      body:
          '${e.key.name} can be upgraded from version ${e.key.version} to ${e.value.version}.',
      appIcon: 'software-update-available',
    ),
  ));
}
