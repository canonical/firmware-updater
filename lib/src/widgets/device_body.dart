import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';

import 'update_dialog.dart';

class DeviceBody extends StatelessWidget {
  const DeviceBody({
    Key? key,
    required this.device,
    required this.canVerify,
    required this.onVerify,
    required this.canUpgrade,
    required this.upgrades,
    required this.onUpgrade,
  }) : super(key: key);

  final FwupdDevice device;
  final bool canVerify;
  final VoidCallback onVerify;
  final bool canUpgrade;
  final List<FwupdRelease> upgrades;
  final ValueChanged<FwupdRelease> onUpgrade;

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
  Widget build(BuildContext context) {
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
                  if (device.version != null)
                    TableRow(children: [
                      DeviceBody._buildHeader(context, 'Version'),
                      const SizedBox.shrink(),
                      DeviceBody._buildLabel(context, device.version!),
                    ]),
                  if (device.vendor != null)
                    TableRow(children: [
                      DeviceBody._buildHeader(context, 'Vendor'),
                      const SizedBox.shrink(),
                      DeviceBody._buildLabel(context, device.vendor!),
                    ]),
                  if (device.guid.isNotEmpty)
                    TableRow(children: [
                      DeviceBody._buildHeader(context, 'GUID'),
                      const SizedBox.shrink(),
                      DeviceBody._buildPadding(
                          SelectableText(device.guid.first)),
                    ]),
                  if (device.guid.length > 1)
                    for (final guid in device.guid.skip(1))
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
                    for (final flag in device.flags)
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
          if (canVerify || canUpgrade) const SizedBox(height: 16),
          if (canVerify || canUpgrade)
            ButtonBar(
              children: [
                if (canVerify)
                  OutlinedButton(
                    onPressed: onVerify,
                    child: const Text('Verify'),
                  ),
                if (canUpgrade)
                  OutlinedButton(
                    onPressed: () => showUpdateDialog(
                      context,
                      device: device,
                      upgrades: upgrades,
                      onUpgrade: onUpgrade,
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
