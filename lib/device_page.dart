import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'device_model.dart';
import 'device_store.dart';
import 'fwupd_l10n.dart';
import 'fwupd_notifier.dart';
import 'fwupd_x.dart';
import 'widgets.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({super.key, this.parentNavigator});

  final NavigatorState? parentNavigator;

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
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }

  static Widget _buildLabel(BuildContext context, String text) {
    return _buildPadding(Text(text));
  }

  static Widget _buildAppBarTitle(
      BuildContext context, String title, String? subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        if (subtitle != null)
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodySmall,
          ),
      ],
    );
  }

  static Widget _buildButtonBar(
      {required BuildContext context, bool enabled = true}) {
    final model = context.read<DeviceModel>();
    final l10n = AppLocalizations.of(context);
    return ButtonBar(
      mainAxisSize: MainAxisSize.min,
      alignment: MainAxisAlignment.start,
      children: [
        if (model.hasUpgrade)
          ElevatedButton(
            onPressed: enabled
                ? () => showConfirmationDialog(
                      context,
                      title: l10n.upgradeConfirm(
                        model.device.name,
                        model.device.version,
                        model.latestRelease!.version,
                      ),
                      message: model.device.flags
                              .contains(FwupdDeviceFlag.usableDuringUpdate)
                          ? null
                          : l10n.deviceUnavailable,
                      actionText: l10n.upgrade,
                      onConfirm: () => model.install(model.latestRelease!),
                      onCancel: () {},
                    )
                : null,
            child: Text(l10n.updateToLatest),
          ),
        if (model.releases?.isNotEmpty ?? false)
          FilledButton(
            onPressed: enabled
                ? () => context.read<DeviceStore>().showReleases = true
                : null,
            child: Text(l10n.allVersions),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<DeviceModel>();
    final notifier = context.watch<FwupdNotifier>();
    final device = model.device;
    final releases = model.releases ?? [];
    final l10n = AppLocalizations.of(context);
    final fwupdIdle = notifier.status == FwupdStatus.idle;
    final deviceFlags = [
      for (final flag in device.flags) flag.localize(context)
    ].whereNotNull();

    return YaruDetailPage(
      appBar: YaruWindowTitleBar(
        title: _buildAppBarTitle(context, device.name, device.summary),
        leading: parentNavigator?.canPop() == true
            ? YaruBackButton(onPressed: parentNavigator!.pop)
            : Icon(DeviceIcon.fromName(device.icon.firstOrNull)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StatusBanner(
              message: notifier.status.localize(context),
              progress: notifier.percentage / 100.0,
              visible: !fwupdIdle,
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
                if (model.latestRelease != null)
                  TableRow(children: [
                    DevicePage._buildHeader(context, 'Latest Version'),
                    const SizedBox.shrink(),
                    DevicePage._buildLabel(
                        context, model.latestRelease!.version),
                  ]),
                if (device.canVerify || releases.isNotEmpty)
                  TableRow(
                    children: [
                      const SizedBox.shrink(),
                      const SizedBox.shrink(),
                      _buildButtonBar(context: context, enabled: fwupdIdle),
                    ],
                  ),
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
                if (device.canVerify)
                  TableRow(children: [
                    DevicePage._buildHeader(context, l10n.checksum),
                    const SizedBox.shrink(),
                    ButtonBar(
                      mainAxisSize: MainAxisSize.min,
                      alignment: MainAxisAlignment.start,
                      overflowButtonSpacing: 8.0,
                      children: [
                        OutlinedButton(
                          onPressed: fwupdIdle
                              ? () => showConfirmationDialog(
                                    context,
                                    title: l10n
                                        .updateChecksumsConfirm(device.name),
                                    message: l10n.updateChecksumsInfo,
                                    onConfirm: model.verifyUpdate,
                                    actionText: l10n.update,
                                  )
                              : null,
                          child: Text(l10n.updateChecksums),
                        ),
                        if (device.checksum != null)
                          OutlinedButton(
                            onPressed: fwupdIdle
                                ? () => showConfirmationDialog(
                                      context,
                                      title: l10n
                                          .verifyFirmwareConfirm(device.name),
                                      message: device.flags.contains(
                                              FwupdDeviceFlag
                                                  .usableDuringUpdate)
                                          ? null
                                          : l10n.deviceUnavailable,
                                      onConfirm: model.verify,
                                    )
                                : null,
                            child: Text(l10n.verifyFirmware),
                          ),
                      ],
                    )
                  ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
