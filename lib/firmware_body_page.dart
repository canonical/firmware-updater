import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';

import 'device_model.dart';
import 'device_page.dart';
import 'firmware_model.dart';
import 'fwupd_x.dart';
import 'release_page.dart';

class FirmwareBodyPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final deviceModel = context.watch<DeviceModel>();
    return ClipRect(
      child: Theme(
        data: Theme.of(context).copyWith(
          pageTransitionsTheme: YaruPageTransitionsTheme.horizontal,
        ),
        child: Navigator(
          pages: [
            MaterialPage(
              child: DevicePage(
                device: deviceModel.device,
                canVerify: deviceModel.device.canVerify,
                onVerify: deviceModel.verify,
                releases: deviceModel.releases ?? [],
                hasUpgrade: deviceModel.hasUpgrade(),
              ),
            ),
            if (deviceModel.selectedRelease != null)
              MaterialPage(
                child: ReleasePage(
                  device: deviceModel.device,
                  releases: deviceModel.releases ?? [],
                  onInstall: deviceModel.install,
                ),
              )
          ],
          onPopPage: (route, result) => route.didPop(result),
        ),
      ),
    );
  }
}
