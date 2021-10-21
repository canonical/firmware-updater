import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';

import 'device_icon.dart';

class DeviceHeader extends StatelessWidget {
  const DeviceHeader({
    Key? key,
    required this.device,
    required this.upgrades,
  }) : super(key: key);

  final FwupdDevice device;
  final List<FwupdRelease> upgrades;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          title: Text(device.name),
          subtitle: Text(device.summary ?? ''),
          leading: DeviceIcon.fromName(device.icon.firstOrNull),
          contentPadding: const EdgeInsets.only(left: 24),
        ),
        if (upgrades.isNotEmpty)
          Positioned.fill(
            child: ClipRect(
              child: Banner(
                message: 'Update',
                location: BannerLocation.topStart,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
      ],
    );
  }
}
