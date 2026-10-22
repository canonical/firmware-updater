import 'package:firmware_updater/pages.dart';
import 'package:firmware_updater/services.dart';
import 'package:firmware_updater/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

class DeviceTile extends StatelessWidget {
  const DeviceTile({
    required this.device,
    super.key,
  });

  static Widget create(
    BuildContext context, {
    required FwupdDevice device,
  }) {
    return DeviceTile(key: ValueKey(device.id), device: device);
  }

  final FwupdDevice device;

  @override
  Widget build(BuildContext context) {
    return DeviceHeader(
      device: device,
      hasUpgrade: context.select<DeviceStore, bool>(
        (store) => store.hasUpgrade(device.id),
      ),
    );
  }
}
