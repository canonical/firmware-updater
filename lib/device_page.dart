import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

import 'device_model.dart';
import 'fwupd_l10n.dart';
import 'src/widgets/confirmation_dialog.dart';
import 'src/widgets/device_icon.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({
    super.key,
    required this.device,
    required this.canVerify,
    required this.onVerify,
    required this.releases,
    required this.hasUpgrade,
  });

  final FwupdDevice device;
  final bool canVerify;
  final VoidCallback onVerify;
  final List<FwupdRelease> releases;
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
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 64,
        ),
        const SizedBox(width: 16),
        Flexible(
          child: Column(
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
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final deviceFlags = [
      for (final flag in device.flags) flag.localize(context)
    ].whereNotNull();
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: 16.0,
            children: [
              DevicePage._buildIconRow(
                context,
                device.vendor ?? '',
                device.name,
                device.summary ?? '',
                DeviceIcon.fromName(device.icon.firstOrNull),
              ),
              if (canVerify || releases.isNotEmpty)
                ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (canVerify)
                      OutlinedButton(
                        onPressed: () => showConfirmationDialog(
                          context,
                          text: l10n.verifyFirmwareConfirm(device.name),
                          description: device.flags
                                  .contains(FwupdDeviceFlag.usableDuringUpdate)
                              ? null
                              : l10n.deviceUnavailable,
                          onConfirm: onVerify,
                        ),
                        child: Text(l10n.verifyFirmware),
                      ),
                    if (releases.isNotEmpty)
                      hasUpgrade
                          ? ElevatedButton(
                              onPressed: () => context
                                  .read<DeviceModel>()
                                  .selectedRelease = releases.first,
                              child: Text(l10n.showUpdates),
                            )
                          : OutlinedButton(
                              onPressed: () => context
                                  .read<DeviceModel>()
                                  .selectedRelease = releases.first,
                              child: Text(l10n.showReleases),
                            ),
                  ],
                ),
            ],
          ),
          const SizedBox(height: 32),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(),
              1: FixedColumnWidth(16),
              2: FlexColumnWidth(2.0),
            },
            children: [
              if (device.version != null)
                TableRow(children: [
                  DevicePage._buildHeader(context, l10n.currentVersion),
                  const SizedBox.shrink(),
                  DevicePage._buildLabel(context, device.version!),
                ]),
              if (device.versionLowest != null)
                TableRow(children: [
                  DevicePage._buildHeader(context, l10n.minVersion),
                  const SizedBox.shrink(),
                  DevicePage._buildLabel(context, device.versionLowest!),
                ]),
              if (device.vendor != null)
                TableRow(children: [
                  DevicePage._buildHeader(context, l10n.vendor),
                  const SizedBox.shrink(),
                  DevicePage._buildLabel(context, device.vendor!),
                ]),
              if (device.guid.isNotEmpty)
                TableRow(children: [
                  DevicePage._buildHeader(context, l10n.guid),
                  const SizedBox.shrink(),
                  DevicePage._buildPadding(SelectableText(device.guid.first)),
                ]),
              if (device.guid.length > 1)
                for (final guid in device.guid.skip(1))
                  TableRow(children: [
                    DevicePage._buildHeader(context, ''),
                    const SizedBox.shrink(),
                    DevicePage._buildPadding(SelectableText(guid)),
                  ]),
              if (deviceFlags.isNotEmpty)
                TableRow(children: [
                  DevicePage._buildHeader(context, l10n.flags),
                  const SizedBox.shrink(),
                  DevicePage._buildPadding(Text(deviceFlags.first))
                ]),
              if (deviceFlags.length > 1)
                for (final flag in deviceFlags.skip(1))
                  TableRow(children: [
                    DevicePage._buildHeader(context, ''),
                    const SizedBox.shrink(),
                    DevicePage._buildPadding(Text(flag))
                  ]),
            ],
          ),
        ],
      ),
    );
  }
}
