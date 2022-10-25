import 'dart:io';

import 'package:desktop_notifications/desktop_notifications.dart';
import 'package:firmware_notifier/firmware_notifier.dart';

void main(List<String> arguments) async {
  final client = NotificationsClient();
  final updates = await getUpdates();
  final notifications = await sendUpdateNotifications(client, updates);

  notifications.map((n) => n.action).forEach((action) async {
    final args = (await action).split(', ');
    await Process.start('firmware-updater', args,
        mode: ProcessStartMode.detached);
  });

  await Future.wait(notifications.map((n) => n.closeReason));
  await client.close();
}
