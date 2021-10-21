import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

import '../../fwupd_models.dart';
import '../../fwupd_icons.dart';

class DeviceHeader extends StatefulWidget {
  const DeviceHeader({Key? key}) : super(key: key);

  static Widget create(BuildContext context, FwupdDevice device) {
    final client = context.read<FwupdClient>();
    return ChangeNotifierProvider(
      create: (_) => FwupdDeviceModel(device, client: client),
      child: const DeviceHeader(),
    );
  }

  @override
  State<DeviceHeader> createState() => _DeviceHeaderState();
}

class _DeviceHeaderState extends State<DeviceHeader> {
  @override
  void initState() {
    super.initState();
    context.read<FwupdDeviceModel>().init();
  }

  @override
  Widget build(BuildContext context) {
    final device = context.watch<FwupdDeviceModel>();
    return Stack(
      children: [
        ListTile(
          title: Text(device.name),
          subtitle: Text(device.summary),
          leading: device.icon.firstOrNull?.toDeviceIcon(),
          contentPadding: const EdgeInsets.only(left: 24),
        ),
        if (device.hasUpgrades)
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
