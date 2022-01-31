import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';

import 'release_dialog.dart';
import 'small_chip.dart';

class DeviceBody extends StatelessWidget {
  const DeviceBody({
    Key? key,
    required this.device,
    required this.canVerify,
    required this.onVerify,
    required this.releases,
    required this.onInstall,
  }) : super(key: key);

  final FwupdDevice device;
  final bool canVerify;
  final VoidCallback onVerify;
  final List<FwupdRelease> releases;
  final ValueChanged<FwupdRelease> onInstall;

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
    final l10n = AppLocalizations.of(context);
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
                      DeviceBody._buildHeader(context, l10n.version),
                      const SizedBox.shrink(),
                      DeviceBody._buildLabel(context, device.version!),
                    ]),
                  if (device.vendor != null)
                    TableRow(children: [
                      DeviceBody._buildHeader(context, l10n.vendor),
                      const SizedBox.shrink(),
                      DeviceBody._buildLabel(context, device.vendor!),
                    ]),
                  if (device.guid.isNotEmpty)
                    TableRow(children: [
                      DeviceBody._buildHeader(context, l10n.guid),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.end,
                    children: [
                      for (final flag in device.flags)
                        SmallChip(text: describeEnum(flag)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (canVerify || releases.isNotEmpty) const SizedBox(height: 16),
          if (canVerify || releases.isNotEmpty)
            ButtonBar(
              children: [
                if (canVerify)
                  OutlinedButton(
                    onPressed: onVerify,
                    child: Text(l10n.verifyFirmware),
                  ),
                if (releases.isNotEmpty)
                  OutlinedButton(
                    onPressed: () => showReleaseDialog(
                      context,
                      device: device,
                      releases: releases,
                      onInstall: onInstall,
                    ),
                    child: Text(l10n.showReleases),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
