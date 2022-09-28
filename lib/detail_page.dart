import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';

import 'device_model.dart';
import 'device_page.dart';
import 'firmware_model.dart';
import 'release_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
  });

  static Widget create(
    BuildContext context, {
    required FwupdDevice device,
  }) {
    return ChangeNotifierProxyProvider<FirmwareModel, DeviceModel>(
      create: (_) => DeviceModel(context.read<FirmwareModel>(), device),
      update: (_, firmwareModel, oldModel) {
        if (oldModel == null) return DeviceModel(firmwareModel, device);
        return oldModel..update(firmwareModel);
      },
      child: const DetailPage(),
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
            const MaterialPage(
              child: DevicePage(),
            ),
            if (deviceModel.selectedRelease != null)
              const MaterialPage(
                child: ReleasePage(),
              )
          ],
          onPopPage: (route, result) => route.didPop(result),
        ),
      ),
    );
  }
}
