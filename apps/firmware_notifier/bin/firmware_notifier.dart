import 'package:dbus/dbus.dart';
import 'package:firmware_notifier/firmware_notifier.dart';
import 'package:fwupd/fwupd.dart';

void main(List<String> arguments) async {
  final dbusClient = DBusClient.session();
  await runNotifier(FwupdClient(), dbusClient, defaultDismissalsDirectory());
  await dbusClient.close();
}
