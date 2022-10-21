import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:firmware_notifier/firmware_notifier.dart';

void main(List<String> arguments) async {
  final client = NotificationsClient();
  final updates = await getUpdates();
  final notifications = await sendUpdateNotifications(client, updates);

  notifications.map((n) => n.action).forEach((action) async {
    print('<run command for deviceId, version ${await action}>');
  });

  await Future.wait(notifications.map((n) => n.closeReason));
  await client.close();
}
