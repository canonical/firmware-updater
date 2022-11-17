import 'package:dbus/dbus.dart';
import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:firmware_notifier/firmware_notifier.dart';

void main(List<String> arguments) async {
  final client = NotificationsClient();
  final updates = await getUpdates();
  final notifications = await sendUpdateNotifications(client, updates);

  notifications.map((n) => n.action).forEach((action) async {
    final args = (await action).split(', ');
    final dbusClient = DBusClient.session();
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
            for (final arg in args) DBusArray.byte(arg.runes.followedBy([0])),
          ],
        ),
        DBusDict.stringVariant({}),
      ],
      replySignature: DBusSignature.int32,
    );
    await dbusClient.close();
  });

  await Future.wait(notifications.map((n) => n.closeReason));
  await client.close();
}
