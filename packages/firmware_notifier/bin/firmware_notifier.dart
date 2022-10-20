import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:fwupd_notifier/firmware_notifier.dart';

void main(List<String> arguments) async {
  final client = NotificationsClient();
  await sendUpdateNotification(client);
  await client.close();
}
