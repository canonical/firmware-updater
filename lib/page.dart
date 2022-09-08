import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_colors/yaru_colors.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'daemon.dart';
import 'fwupd_x.dart';
import 'model.dart';
import 'service.dart';
import 'widgets.dart';

class FwupdPage extends StatefulWidget {
  const FwupdPage({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FwupdDaemon(getService<FwupdService>()),
        ),
        ChangeNotifierProvider(
          create: (_) => FwupdModel(getService<FwupdService>()),
        ),
      ],
      child: const FwupdPage(),
    );
  }

  @override
  State<FwupdPage> createState() => _FwupdPageState();
}

class _FwupdPageState extends State<FwupdPage> {
  final _expansions = <int, bool>{};

  @override
  void initState() {
    super.initState();
    context.read<FwupdModel>().init(
          onError: (error) => showMessageDialog(
            context,
            icon: YaruIcons.error,
            title: 'Error',
            message: error,
          ),
        );
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
        child: YaruExpansionPanelList(
          customExpandIconData: YaruIcons.pan_down,
          elevation: 0.8,
          expansionCallback: (index, isExpanded) {
            setState(() => _expansions[index] = !isExpanded);
          },
          children: [
            for (var i = 0; i < model.devices.length; ++i)
              ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: _expansions[i] == true,
                headerBuilder: (context, isExpanded) => DeviceHeader(
                  device: model.devices[i],
                  hasUpgrade: model.hasUpgrade(model.devices[i]),
                ),
                body: DeviceBody(
                  device: model.devices[i],
                  canVerify: model.devices[i].canVerify,
                  onVerify: () => model.verify(model.devices[i]),
                  releases: model.releases(model.devices[i]),
                  onInstall: (rel) => model.install(model.devices[i], rel),
                  hasUpgrade: model.hasUpgrade(model.devices[i]),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: StatusBar(
        status: daemon.status,
        daemonVersion: daemon.version,
      ),
    );
  }
}
