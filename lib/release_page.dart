import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:yaru_icons/yaru_icons.dart';

import 'device_model.dart';
import 'fwupd_x.dart';
import 'src/widgets/confirmation_dialog.dart';
import 'src/widgets/release_card.dart';

class ReleasePage extends StatelessWidget {
  const ReleasePage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<DeviceModel>();
    final device = model.device;
    final releases = model.releases ?? [];
    final selected = model.selectedRelease;
    final l10n = AppLocalizations.of(context);
    final String action;
    final String dialogText;
    final dialogDesc = device.flags.contains(FwupdDeviceFlag.usableDuringUpdate)
        ? null
        : l10n.deviceUnavailable;

    if (selected?.isDowngrade == true) {
      action = l10n.downgrade;
      dialogText = l10n.downgradeConfirm(
        device.name,
        device.version,
        selected?.version,
      );
    } else if (selected?.isUpgrade == false) {
      action = l10n.reinstall;
      dialogText = l10n.reinstallConfirm(
        device.name,
        device.version,
      );
    } else {
      action = l10n.upgrade;
      dialogText = l10n.upgradeConfirm(
        device.name,
        device.version,
        selected?.version,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${device.name} ${device.version}'),
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(YaruIcons.go_previous),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: releases
            .map(
              (release) => ReleaseCard(
                release: release,
                selected: release == selected,
                onSelected: () =>
                    context.read<DeviceModel>().selectedRelease = release,
              ),
            )
            .toList(),
      ),
      bottomNavigationBar: ButtonBar(
        children: [
          ElevatedButton(
            onPressed: selected != null
                ? () {
                    showConfirmationDialog(
                      context,
                      text: dialogText,
                      description: dialogDesc,
                      okText: action,
                      onConfirm: () {
                        model.install(selected);
                        Navigator.of(context).pop();
                      },
                      onCancel: () {},
                    );
                  }
                : null,
            child: Text(action),
          ),
          OutlinedButton(
            onPressed: Navigator.of(context).pop,
            child: Text(l10n.cancel),
          )
        ],
      ),
    );
  }
}
