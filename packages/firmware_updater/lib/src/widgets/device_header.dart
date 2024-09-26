import 'package:collection/collection.dart';
import 'package:firmware_updater/src/widgets/device_icon.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:yaru/yaru.dart';

class DeviceHeader extends StatelessWidget {
  const DeviceHeader({
    required this.device,
    required this.hasUpgrade,
    super.key,
  });

  final FwupdDevice device;
  final bool hasUpgrade;

  @override
  Widget build(BuildContext context) {
    return YaruMasterTile(
      title: Text(device.name),
      subtitle: Text(device.summary ?? ''),
      leading: Badge(
        isLabelVisible: hasUpgrade,
        alignment: AlignmentDirectional.topStart,
        child: Icon(DeviceIcon.fromName(device.icon.firstOrNull)),
      ),
    );
  }
}
