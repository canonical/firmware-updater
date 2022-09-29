import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru/yaru.dart';

import 'device_model.dart';
import 'device_page.dart';
import 'fwupd_service.dart';
import 'release_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
  });

  static Widget create(
    BuildContext context, {
    required FwupdDevice device,
  }) {
    return ChangeNotifierProvider<DeviceModel>(
      create: (_) => DeviceModel(device, getService<FwupdService>()),
      child: const DetailPage(),
    );
  }

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<DeviceModel>().init();
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
