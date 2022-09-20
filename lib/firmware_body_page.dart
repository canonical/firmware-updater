import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

import 'device_model.dart';
import 'firmware_model.dart';
import 'fwupd_x.dart';
import 'src/widgets/device_body.dart';
import 'src/widgets/release_dialog.dart';

class FirmwareBodyPage extends StatefulWidget {
  const FirmwareBodyPage({
    super.key,
  });

  static Widget create(
    BuildContext context, {
    required FwupdDevice device,
  }) {
    final firmwareModel = context.read<FirmwareModel>();
    return ChangeNotifierProvider<DeviceModel>(
      create: (_) => DeviceModel(firmwareModel, device),
      child: const FirmwareBodyPage(),
    );
  }

  @override
  State<FirmwareBodyPage> createState() => _FirmwareBodyPageState();
}

class _FirmwareBodyPageState extends State<FirmwareBodyPage> {
  @override
  Widget build(BuildContext context) {
    final deviceModel = context.watch<DeviceModel>();
    return Navigator(
      pages: [
        MaterialPage(
          child: DeviceBody(
            device: deviceModel.device,
            canVerify: deviceModel.device.canVerify,
            onVerify: deviceModel.verify,
            releases: deviceModel.releases ?? [],
            onInstall: deviceModel.install,
            hasUpgrade: deviceModel.hasUpgrade(),
          ),
        ),
        if (deviceModel.selectedRelease != null)
          MaterialPage(
            child: ReleaseDialog(
              device: deviceModel.device,
              releases: deviceModel.releases ?? [],
              onInstall: deviceModel.install,
            ),
          )
      ],
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
