import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_colors/yaru_colors.dart';

import 'daemon.dart';
import 'fwupd_x.dart';
import 'model.dart';
import 'service.dart';
import 'widgets.dart';

class FirmwarePage extends StatefulWidget {
  const FirmwarePage({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    final service = getService<FwupdService>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FwupdDaemon(service)),
        ChangeNotifierProvider(create: (_) => FwupdModel(service)),
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
    context.read<FwupdDaemon>().init();
    context.read<FwupdModel>().init();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<FwupdModel>();
    final daemon = context.watch<FwupdDaemon>();
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? YaruColors.warmGrey.shade200
          : null,
      appBar: AppProgressBar(
        title: AppLocalizations.of(context).appTitle,
        height: ProgressIndicatorTheme.of(context).linearMinHeight,
        status: daemon.status,
        progress: daemon.percentage / 100,
        onRefresh: model.refresh,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: model.state.map(
          data: (state) => DevicePanelList(
            devices: state.devices,
            headerBuilder: (context, device, isExpanded) => DeviceHeader(
              device: device,
              hasUpgrade: state.hasUpgrade(device),
            ),
            bodyBuilder: (context, device, child) => DeviceBody(
              device: device,
              canVerify: device.canVerify,
              hasUpgrade: state.hasUpgrade(device),
              releases: state.getReleases(device) ?? [],
              onVerify: () => model.verify(device),
              onInstall: (release) => model.install(device, release),
            ),
          ),
          loading: (state) => const Center(child: CircularProgressIndicator()),
          error: (state) => ErrorWidget(state.error),
        ),
      ),
      bottomNavigationBar: StatusBar(
        status: daemon.status,
        daemonVersion: daemon.version,
      ),
    );
  }
}
