import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fwupd/fwupd.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import '../../fwupd_x.dart';
import 'confirmation_dialog.dart';

class ReleaseCard extends StatelessWidget {
  const ReleaseCard({
    super.key,
    required this.release,
    required this.device,
    this.onInstall,
  });

  final FwupdRelease release;
  final FwupdDevice device;
  final VoidCallback? onInstall;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final String action;
    final String dialogText;
    final dialogDesc = device.flags.contains(FwupdDeviceFlag.usableDuringUpdate)
        ? null
        : l10n.deviceUnavailable;

    if (release.isDowngrade) {
      action = l10n.downgrade;
      dialogText = l10n.downgradeConfirm(
        device.name,
        device.version,
        release.version,
      );
    } else if (release.isUpgrade) {
      action = l10n.upgrade;
      dialogText = l10n.upgradeConfirm(
        device.name,
        device.version,
        release.version,
      );
    } else {
      action = l10n.reinstall;
      dialogText = l10n.reinstallConfirm(
        device.name,
        device.version,
      );
    }
    void confirmAndInstall() {
      showConfirmationDialog(
        context,
        title: dialogText,
        message: dialogDesc,
        actionText: action,
        onConfirm: onInstall,
        onCancel: () {},
      );
    }

    return YaruSection(
      width: double.infinity,
      headline: Text(
        release.version,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      headerWidget: release.version == device.version
          ? DefaultTextStyle.merge(
              child: Text(l10n.currentVersion),
              style: TextStyle(color: Theme.of(context).colorScheme.primary))
          : null,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Html(
            data: '${release.summary}${release.description}',
            style: {
              'body': Style(margin: EdgeInsets.zero),
              'h3': Style(margin: EdgeInsets.zero)
            },
            shrinkWrap: true,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: release.isUpgrade
              ? ElevatedButton(
                  onPressed: confirmAndInstall,
                  child: Text(l10n.upgrade),
                )
              : OutlinedButton(
                  onPressed: confirmAndInstall,
                  child: Text(
                      release.isDowngrade ? l10n.downgrade : l10n.reinstall),
                ),
        ),
      ],
    );
  }
}
