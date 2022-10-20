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

Future<Notification> sendUpdateNotification(NotificationsClient client) async {
  final updates = await getUpdates();
  late final String title;
  late final String body;

  if (updates.length == 1) {
    final device = updates.entries.first.key;
    final update = updates.entries.first.value;
    title = 'Firmware update available for ${device.name}';
    body =
        '${device.name} can be upgraded from version ${device.version} to ${update.version}.';
  } else if (updates.length > 1) {
    title = 'Multiple firmware updates available';
    body = updates.entries
        .map<String>(
          (e) =>
              '${e.key.name} can be upgraded from version ${e.key.version} to ${e.value.version}.',
        )
        .fold('', (p, e) => '$p\n$e');
  }

  return client.notify(title, body: body, appIcon: 'software-update-available');
}
