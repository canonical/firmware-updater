import 'package:firmware_updater/device_model.dart';
import 'package:firmware_updater/fwupd_dbus_service.dart';
import 'package:firmware_updater/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

class DeviceTile extends StatefulWidget {
  const DeviceTile({
    super.key,
  });

  static Widget create(
    BuildContext context, {
    required FwupdDevice device,
  }) {
    return ChangeNotifierProvider<DeviceModel>(
      key: ValueKey(device.hashCode),
      create: (_) => DeviceModel(device, getService<FwupdDbusService>()),
      child: const DeviceTile(),
    );
  }

  @override
  State<DeviceTile> createState() => _DeviceTileState();
}

class _DeviceTileState extends State<DeviceTile> {
  @override
  void initState() {
    super.initState();
    context.read<DeviceModel>().init();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<DeviceModel>();
    return DeviceHeader(
      device: model.device,
      hasUpgrade: model.hasUpgrade,
    );
  }
}
