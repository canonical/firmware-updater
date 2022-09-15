import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_colors/yaru_colors.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'firmware_model.dart';
import 'fwupd_notifier.dart';
import 'fwupd_service.dart';
import 'fwupd_x.dart';
import 'widgets.dart';

class FirmwarePage extends StatefulWidget {
  const FirmwarePage({super.key});

  static Widget create(BuildContext context) {
    final service = getService<FwupdService>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FirmwareModel(service)),
        ChangeNotifierProvider(create: (_) => FwupdNotifier(service)),
      ],
      child: const FirmwarePage(),
    );
  }

  @override
  State<FirmwarePage> createState() => _FirmwarePageState();
}

class _FirmwarePageState extends State<FirmwarePage> {
  @override
  void initState() {
    super.initState();
    context.read<FirmwareModel>().init();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<FirmwareModel>();
    return model.state.map(
      data: (state) => YaruMasterDetailPage(
        pageItems: state.devices
            .map((device) => YaruPageItem(
                  titleBuilder: (context) => DeviceHeader(
                    device: device,
                    hasUpgrade: state.hasUpgrade(device),
                  ),
                  builder: (context) => DeviceBody(
                    device: device,
                    canVerify: device.canVerify,
                    onVerify: () => model.verify(device),
                    releases: state.getReleases(device) ?? [],
                    onInstall: (release) => model.install(device, release),
                    hasUpgrade: state.hasUpgrade(device),
                  ),
                  iconData: DeviceIcon.fromName(device.icon.firstOrNull),
                ))
            .toList(),
        leftPaneWidth: 400,
      ),
      loading: (state) => const Center(child: CircularProgressIndicator()),
      error: (state) => ErrorWidget(state.error),
    );
  }
}
