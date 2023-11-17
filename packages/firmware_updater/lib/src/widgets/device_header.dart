import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'device_icon.dart';

class DeviceHeader extends StatelessWidget {
  const DeviceHeader({
    super.key,
    required this.device,
    required this.hasUpgrade,
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
