import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

import 'fwupd_models.dart';
import 'fwupd_widgets.dart';

class FwupdPage extends StatefulWidget {
  const FwupdPage({Key? key}) : super(key: key);

  static Widget create(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FwupdModel(context.read<FwupdClient>()),
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
    context.read<FwupdModel>().init().then((value) => null);
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<FwupdModel>();
    return Scaffold(
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
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() => _expansions[index] = !isExpanded);
          },
          children: [
            for (var i = 0; i < model.devices.length; ++i)
              _buildDevicePanel(
                context,
                device: model.devices[i],
                isExpanded: _expansions[i] == true,
              ),
          ],
        ),
      ),
      bottomNavigationBar: const StatusBar(),
    );
  }
}

ExpansionPanel _buildDevicePanel(
  BuildContext context, {
  required FwupdDevice device,
  required bool isExpanded,
}) {
  final model = FwupdDeviceModel(device, client: context.read<FwupdClient>());
  model.init();
  return ExpansionPanel(
    isExpanded: isExpanded,
    canTapOnHeader: true,
    headerBuilder: (context, isExpanded) => DeviceHeader.create(context, model),
    body: DeviceBody.create(context, model),
  );
}
