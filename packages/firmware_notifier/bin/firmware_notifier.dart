import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:fwupd_notifier/firmware_notifier.dart';

void main(List<String> arguments) async {
  final client = NotificationsClient();
  final notifications = await sendUpdateNotifications(client);
  final closeReasons =
      await Future.wait(notifications.map((n) => n.closeReason));
  print(closeReasons);
  await client.close();
}
