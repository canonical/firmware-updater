import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'model.dart';
import 'service.dart';
import 'widgets.dart';

class FwupdPage extends StatefulWidget {
  const FwupdPage({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FwupdModel(
        client: context.read<FwupdClient>(),
        service: context.read<FwupdService>(),
      ),
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
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? YaruColors.warmGrey.shade200
          : null,
      appBar: AppBar(
        title: const Text('Firmware Updater'),
        bottom: PreferredSize(
          child: Visibility(
            visible: model.status != FwupdStatus.idle &&
                model.status != FwupdStatus.unknown,
            child: LinearProgressIndicator(
              value: model.percentage / 100,
            ),
          ),
          preferredSize: Size(
            double.infinity,
            ProgressIndicatorTheme.of(context).linearMinHeight ?? 6,
          ),
        ),
        actions: <Widget>[
          RefreshButton(isBusy: model.isBusy, onPressed: model.refresh),
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
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: StatusBar(
        status: model.status,
        daemonVersion: model.daemonVersion,
      ),
    );
  }
}
