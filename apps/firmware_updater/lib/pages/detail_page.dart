import 'package:firmware_updater/pages.dart';
import 'package:firmware_updater/services.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();

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
}

class _DetailPageState extends State<DetailPage> {
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

  @override
  void initState() {
    super.initState();
    context.read<DeviceModel>().init();
  }
}
