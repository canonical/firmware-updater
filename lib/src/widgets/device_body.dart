import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';

import 'device_icon.dart';
import 'release_dialog.dart';

class DeviceBody extends StatelessWidget {
  const DeviceBody({
    super.key,
    required this.device,
    required this.canVerify,
    required this.onVerify,
    required this.releases,
    required this.onInstall,
    required this.hasUpgrade,
  });

  final FwupdDevice device;
  final bool canVerify;
  final VoidCallback onVerify;
  final List<FwupdRelease> releases;
  final ValueChanged<FwupdRelease> onInstall;
  final bool hasUpgrade;

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

  static Widget _buildIconRow(
    BuildContext context,
    String vendor,
    String name,
    String description,
    IconData icon,
  ) {
    return Row(
      children: [
        Icon(
          icon,
          size: 64,
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              vendor,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              DeviceBody._buildIconRow(
                context,
                device.vendor ?? '',
                device.name,
                device.summary ?? '',
                DeviceIcon.fromName(device.icon.firstOrNull),
              ),
              if (canVerify || releases.isNotEmpty) const Spacer(),
              if (canVerify || releases.isNotEmpty)
                ButtonBar(
                  children: [
                    if (canVerify)
                      OutlinedButton(
                        onPressed: onVerify,
                        child: Text(l10n.verifyFirmware),
                      ),
                    if (releases.isNotEmpty)
                      hasUpgrade
                          ? ElevatedButton(
                              onPressed: () => showReleaseDialog(
                                context,
                                device: device,
                                releases: releases,
                                onInstall: onInstall,
                              ),
                              child: Text(l10n.showUpdates),
                            )
                          : OutlinedButton(
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
          const SizedBox(height: 32),
          Table(
            columnWidths: const {
              0: IntrinsicColumnWidth(),
              1: FixedColumnWidth(16),
              2: IntrinsicColumnWidth(),
            },
            children: [
              if (device.version != null)
                TableRow(children: [
                  DeviceBody._buildHeader(context, l10n.currentVersion),
                  const SizedBox.shrink(),
                  DeviceBody._buildLabel(context, device.version!),
                ]),
              if (device.versionLowest != null)
                TableRow(children: [
                  DeviceBody._buildHeader(context, l10n.minVersion),
                  const SizedBox.shrink(),
                  DeviceBody._buildLabel(context, device.versionLowest!),
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
                  DeviceBody._buildPadding(SelectableText(device.guid.first)),
                ]),
              if (device.guid.length > 1)
                for (final guid in device.guid.skip(1))
                  TableRow(children: [
                    DeviceBody._buildHeader(context, ''),
                    const SizedBox.shrink(),
                    DeviceBody._buildPadding(SelectableText(guid)),
                  ]),
              if (device.flags.isNotEmpty)
                TableRow(children: [
                  DeviceBody._buildHeader(context, l10n.flags),
                  const SizedBox.shrink(),
                  DeviceBody._buildPadding(
                      Text(describeEnum(device.flags.first)))
                ]),
              if (device.flags.length > 1)
                for (final flag in device.flags.skip(1))
                  TableRow(children: [
                    DeviceBody._buildHeader(context, ''),
                    const SizedBox.shrink(),
                    DeviceBody._buildPadding(Text(describeEnum(flag)))
                  ]),
            ],
          ),
        ],
      ),
    );
  }
}
