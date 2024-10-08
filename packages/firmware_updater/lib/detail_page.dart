import 'package:firmware_updater/device_model.dart';
import 'package:firmware_updater/device_page.dart';
import 'package:firmware_updater/device_store.dart';
import 'package:firmware_updater/fwupd_dbus_service.dart';
import 'package:firmware_updater/fwupd_mock_service.dart';
import 'package:firmware_updater/release_page.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru/yaru.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
  });

  static Widget create(
    BuildContext context, {
    required FwupdDevice device,
  }) {
    return ChangeNotifierProvider<DeviceModel>(
      key: ValueKey(device.hashCode),
      create: (_) => DeviceModel(
        device,
        hasService<FwupdMockService>()
            ? getService<FwupdMockService>()
            : getService<FwupdDbusService>(),
      ),
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
    final navigator = Navigator.of(context);
    final pages = [
      MaterialPage(
        child: DevicePage(parentNavigator: navigator),
      ),
      if (context.select<DeviceStore, bool>((store) => store.showReleases))
        const MaterialPage(
          child: ReleasePage(),
        ),
    ];

    return ClipRect(
      child: Theme(
        data: Theme.of(context).copyWith(
          pageTransitionsTheme: YaruPageTransitionsTheme.horizontal,
        ),
        child: Navigator(
          pages: pages,
          onDidRemovePage: pages.remove,
          observers: [HeroController()],
        ),
      ),
    );
  }
}
