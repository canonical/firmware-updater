import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'device_model.dart';
import 'device_store.dart';
import 'fwupd_notifier.dart';
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

    return model.state == DeviceState.busy
        ? const Center(child: YaruCircularProgressIndicator())
        : YaruDetailPage(
            appBar: AppBar(
              title: Text('${device.name} ${device.version}'),
              leading: Navigator.of(context).canPop()
                  ? const YaruBackButton()
                  : null,
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
                            title: dialogText,
                            message: dialogDesc,
                            actionText: action,
                            onConfirm: () async {
                              final notifier = context.read<FwupdNotifier>();
                              final store = context.read<DeviceStore>();
                              model.selectedRelease = null;
                              await model.install(selected);
                              await notifier.refresh();

                              // refresh [DeviceStore] to force updates of all
                              // [DeviceModel]s even if fwupd didn't send an
                              // appropriate DBus signal (possible bug in 1.7.5
                              // on Ubuntu 22.04)
                              // TODO: improve when better solution is found
                              await store.refresh();
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
