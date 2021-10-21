import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

import 'update_dialog.dart';
import '../../fwupd_models.dart';

class DeviceBody extends StatefulWidget {
  const DeviceBody({Key? key}) : super(key: key);

  static Widget create(BuildContext context, FwupdDevice device) {
    final client = context.read<FwupdClient>();
    return ChangeNotifierProvider(
      create: (_) => FwupdDeviceModel(device, client: client),
      child: const DeviceBody(),
    );
  }

  static Widget _buildPadding(Widget child) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: child,
    );
  }

  static Widget _buildHeader(BuildContext context, String text) {
    return _buildPadding(
      Text(
        text,
        textAlign: TextAlign.end,
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }

  static Widget _buildLabel(BuildContext context, String text) {
    return _buildPadding(Text(text));
  }

  @override
  State<DeviceBody> createState() => _DeviceBodyState();
}

class _DeviceBodyState extends State<DeviceBody> {
  @override
  void initState() {
    super.initState();
    context.read<FwupdDeviceModel>().init();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<FwupdDeviceModel>();
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Table(
                columnWidths: const {
                  0: IntrinsicColumnWidth(),
                  1: FixedColumnWidth(16),
                  2: IntrinsicColumnWidth(),
                },
                children: [
                  if (model.device.version != null)
                    TableRow(children: [
                      DeviceBody._buildHeader(context, 'Version'),
                      const SizedBox.shrink(),
                      DeviceBody._buildLabel(context, model.device.version!),
                    ]),
                  if (model.device.vendor != null)
                    TableRow(children: [
                      DeviceBody._buildHeader(context, 'Vendor'),
                      const SizedBox.shrink(),
                      DeviceBody._buildLabel(context, model.device.vendor!),
                    ]),
                  if (model.device.guid.isNotEmpty)
                    TableRow(children: [
                      DeviceBody._buildHeader(context, 'GUID'),
                      const SizedBox.shrink(),
                      DeviceBody._buildPadding(
                          SelectableText(model.device.guid.first)),
                    ]),
                  if (model.device.guid.length > 1)
                    for (final guid in model.device.guid.skip(1))
                      TableRow(children: [
                        DeviceBody._buildHeader(context, ''),
                        const SizedBox.shrink(),
                        DeviceBody._buildPadding(SelectableText(guid)),
                      ]),
                ],
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.end,
                  children: [
                    for (final flag in model.device.flags)
                      Chip(
                        label: Text(describeEnum(flag)),
                        labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                        labelStyle: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(fontSize: 10),
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (model.device.canVerify || model.hasUpgrades)
            const SizedBox(height: 16),
          if (model.device.canVerify || model.hasUpgrades)
            ButtonBar(
              children: [
                if (model.device.canVerify)
                  const OutlinedButton(
                    onPressed: null,
                    child: Text('Verify'),
                  ),
                if (model.hasUpgrades)
                  OutlinedButton(
                    onPressed: () => showUpdateDialog(
                      context,
                      device: model.device,
                      upgrades: model.upgrades,
                      onUpdate: model.install,
                    ),
                    child: const Text('Update'),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<FwupdModel>(context);
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text('Status: ${model.status.toString().split('.').last}'),
            const Spacer(),
            Text('fwupd ${model.daemonVersion}'),
          ],
        ),
      ),
    );
  }
}
