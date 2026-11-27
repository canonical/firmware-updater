import 'package:collection/collection.dart';
import 'package:dbus/dbus.dart';
import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:fwupd/fwupd.dart';

// Desktop file snapd generates for the `firmware-updater` snap app.
const desktopEntryName = 'firmware-updater_firmware-updater';

/// Sends a notification for every device's Latest update and waits until all
/// of them have been closed.
///
/// [fwupdClient] is used to find the Available updates and [dbusClient] is the
/// session D-Bus used for notifications and for opening the app.
Future<void> runNotifier(FwupdClient fwupdClient, DBusClient dbusClient) async {
  final client = NotificationsClient(bus: dbusClient);
  final updates = await getUpdates(fwupdClient);
  final notifications = await sendUpdateNotifications(client, updates);

  await Future.wait(
    notifications.map(
      (notification) => _handleNotification(notification, dbusClient),
    ),
  );
  await client.close();
}

Future<void> _handleNotification(
  Notification notification,
  DBusClient dbusClient,
) async {
  var actionTaken = false;
  final actionHandled = notification.action.then((action) async {
    actionTaken = true;
    await _openApplication(dbusClient, action.split(', '));
  });

  await Future.any([actionHandled, notification.closeReason]);
  if (actionTaken) {
    await actionHandled;
  }
  await notification.closeReason;
}

Future<Map<FwupdDevice, FwupdRelease>> getUpdates([
  FwupdClient? client,
]) async {
  final fwupdClient = client ?? FwupdClient();
  await fwupdClient.connect();

  final devices = await fwupdClient.getDevices().catchError(
    (_) => Future.value(<FwupdDevice>[]),
    test: (e) => e is FwupdNothingToDoException,
  );
  final updates = {
    for (final device in devices)
      device:
          (await fwupdClient
                  .getReleases(device.deviceId)
                  .catchError(
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
        appName: 'Firmware Updater',
        appIcon: 'software-update-available',
        hints: [NotificationHint.desktopEntry(desktopEntryName)],
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

Future<void> _openApplication(
  DBusClient dbusClient,
  List<String> arguments,
) async {
  await dbusClient.callMethod(
    path: DBusObjectPath('/com/canonical/firmware_updater'),
    interface: 'org.gtk.Application',
    destination: 'com.canonical.firmware_updater',
    name: 'CommandLine',
    values: [
      DBusObjectPath('/com/canonical/firmware_updater'),
      DBusArray(
        DBusSignature.array(DBusSignature.byte),
        [
          DBusArray.byte([0]),
          for (final arg in arguments)
            DBusArray.byte(arg.runes.followedBy([0])),
        ],
      ),
      DBusDict.stringVariant({}),
    ],
    replySignature: DBusSignature.int32,
  );
}
