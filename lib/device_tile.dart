import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

import 'device_model.dart';
import 'fwupd_service.dart';
import 'widgets.dart';

class DeviceTile extends StatefulWidget {
  const DeviceTile({
    super.key,
  });

  static Widget create(
    BuildContext context, {
    required FwupdDevice device,
  }) {
    return ChangeNotifierProvider<DeviceModel>(
      create: (_) => DeviceModel(device, getService<FwupdService>()),
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
      hasUpgrade: model.hasUpgrade(),
    );
  }
}
