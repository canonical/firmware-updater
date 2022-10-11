import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'detail_page.dart';
import 'device_store.dart';
import 'device_tile.dart';
import 'fwupd_notifier.dart';
import 'fwupd_service.dart';

class FirmwareApp extends StatefulWidget {
  const FirmwareApp({super.key});

  static Widget create(BuildContext context) {
    final service = getService<FwupdService>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DeviceStore(service)),
        ChangeNotifierProvider(create: (_) => FwupdNotifier(service)),
      ],
      child: const FirmwareApp(),
    );
  }

  @override
  State<FirmwareApp> createState() => _FirmwareAppState();
}

class _FirmwareAppState extends State<FirmwareApp> {
  @override
  void initState() {
    super.initState();
    context.read<DeviceStore>().init();
    context.read<FwupdNotifier>().init();
  }

  @override
  Widget build(BuildContext context) {
    final store = context.watch<DeviceStore>();
    return store.when(
      devices: (devices) => YaruMasterDetailPage(
        length: devices.length,
        pageBuilder: (context, index) =>
            DetailPage.create(context, device: devices[index]),
        tileBuilder: (context, index, selected) =>
            DeviceTile.create(context, device: devices[index]),
        leftPaneWidth: 400,
      ),
      empty: () => const Center(child: YaruCircularProgressIndicator()),
    );
  }
}
