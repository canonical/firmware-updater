import 'package:collection/collection.dart';
import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:fwupd/fwupd.dart';
import 'package:meta/meta.dart';

Future<Map<FwupdDevice, FwupdRelease>> getUpdates([
  @visibleForTesting FwupdClient? client,
]) async {
  final fwupdClient = client ?? FwupdClient();
  await fwupdClient.connect();

  final devices = await fwupdClient.getDevices().catchError(
        (_) => Future.value(<FwupdDevice>[]),
        test: (e) => e is FwupdNothingToDoException,
      );
  final updates = {
    for (final device in devices)
      device: (await fwupdClient.getReleases(device.deviceId).catchError(
                (_) => <FwupdRelease>[],
                test: (e) =>
                    e is FwupdNothingToDoException ||
                    e is FwupdNotSupportedException,
              ))
          .firstWhereOrNull(
        (r) => r.flags.contains(FwupdReleaseFlag.isUpgrade),
      ),
  }..removeWhere((_, update) => update == null);
  await fwupdClient.close();
  return Map<FwupdDevice, FwupdRelease>.from(updates);
}

Future<List<Notification>> sendUpdateNotifications(
  NotificationsClient client,
  Map<FwupdDevice, FwupdRelease> updates,
) async {
  return Future.wait(
    updates.entries.map(
      (e) => client.notify(
        'Firmware update available for ${e.key.name}',
        body:
            '${e.key.name} can be upgraded from version ${e.key.version} to ${e.value.version}.',
        appIcon: 'software-update-available',
        actions: [
          NotificationAction(
            '${e.key.deviceId}, ${e.value.version}',
            'Install',
          ),
        ],
      ),
    ),
  );
}
