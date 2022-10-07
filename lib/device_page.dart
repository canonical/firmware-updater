import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

import 'device_model.dart';
import 'fwupd_l10n.dart';
import 'fwupd_x.dart';
import 'src/widgets/confirmation_dialog.dart';
import 'src/widgets/device_icon.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({super.key});

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
    final model = context.watch<DeviceModel>();
    final device = model.device;
    final releases = model.releases ?? [];
    final l10n = AppLocalizations.of(context);
    final deviceFlags = [
      for (final flag in device.flags) flag.localize(context)
    ].whereNotNull();

    if (model.state == DeviceState.needsReboot) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => showConfirmationDialog(
          context,
          title: l10n.rebootConfirm,
          okText: l10n.reboot,
          onCancel: () => model.state = DeviceState.idle,
          onConfirm: model.reboot,
        ),
      );
    } else if (model.state == DeviceState.error) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => showErrorDialog(
          context,
          title: l10n.installError,
          message: model.error!.localize(context),
          onConfirm: () => model.state = DeviceState.idle,
        ),
      );
    }
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
                DeviceIcon.fromName(model.device.icon.firstOrNull),
              ),
              if (device.canVerify || releases.isNotEmpty)
                ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (device.canVerify)
                      OutlinedButton(
                        onPressed: () => showConfirmationDialog(
                          context,
                          title: l10n.updateChecksumsConfirm(device.name),
                          message: l10n.updateChecksumsInfo,
                          onConfirm: model.verifyUpdate,
                          okText: l10n.update,
                        ),
                        child: Text(l10n.updateChecksums),
                      ),
                    if (device.canVerify && device.checksum != null)
                      OutlinedButton(
                        onPressed: () => showConfirmationDialog(
                          context,
                          title: l10n.verifyFirmwareConfirm(device.name),
                          message: device.flags
                                  .contains(FwupdDeviceFlag.usableDuringUpdate)
                              ? null
                              : l10n.deviceUnavailable,
                          onConfirm: model.verify,
                        ),
                        child: Text(l10n.verifyFirmware),
                      ),
                    if (releases.isNotEmpty)
                      model.hasUpgrade()
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
