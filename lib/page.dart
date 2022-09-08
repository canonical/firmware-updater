import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_colors/yaru_colors.dart';

import 'daemon.dart';
import 'fwupd_x.dart';
import 'model.dart';
import 'service.dart';
import 'widgets.dart';

class FwupdPage extends StatefulWidget {
  const FwupdPage({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    final service = getService<FwupdService>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FwupdDaemon(service)),
        ChangeNotifierProvider(create: (_) => FwupdModel(service)),
      ],
      child: const FwupdPage(),
    );
  }

  @override
  State<FwupdPage> createState() => _FwupdPageState();
}

class _FwupdPageState extends State<FwupdPage> {
  @override
  void initState() {
    super.initState();
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
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).appTitle),
        bottom: PreferredSize(
          preferredSize: Size(
            double.infinity,
            ProgressIndicatorTheme.of(context).linearMinHeight ?? 6,
          ),
          child: Visibility(
            visible: daemon.status != FwupdStatus.idle &&
                daemon.status != FwupdStatus.unknown,
            child: LinearProgressIndicator(
              value: daemon.percentage / 100,
            ),
          ),
        ),
        actions: <Widget>[
          RefreshButton(isBusy: daemon.isBusy, onPressed: model.refresh),
          const SizedBox(width: 8),
        ],
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
