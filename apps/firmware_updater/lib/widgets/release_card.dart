import 'package:firmware_updater/l10n/app_localizations.dart';
import 'package:firmware_updater/services.dart';
import 'package:firmware_updater/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fwupd/fwupd.dart';
import 'package:yaru/yaru.dart';

class ReleaseCard extends StatelessWidget {
  const ReleaseCard({
    required this.release,
    required this.device,
    super.key,
    this.onInstall,
    this.testDeviceAffectsFde = false,
  });

  final FwupdRelease release;
  final FwupdDevice device;
  final VoidCallback? onInstall;
  final bool testDeviceAffectsFde;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return YaruSection(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      headlinePadding: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      headline: Row(
        children: [
          Badge(
            isLabelVisible: release.isUpgrade,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 8),
              child: Text(
                release.version,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          Visibility(
            visible: release.version == device.version,
            child: Chip(
              label: Text(l10n.currentVersion),
              labelStyle: Theme.of(context).textTheme.bodySmall,
              labelPadding: EdgeInsets.zero,
            ),
          ),
          const Spacer(),
          FilledButton(
            onPressed: () => confirmAndInstall(
              context,
              release: release,
              device: device,
              onInstall: onInstall,
              testDeviceAffectsFde: testDeviceAffectsFde,
            ),
            child: Text(
              release.isUpgrade
                  ? l10n.update
                  : release.isDowngrade
                      ? l10n.downgrade
                      : l10n.reinstall,
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Html(
            data: '${release.summary}${release.description}',
            style: {
              'body': Style(margin: Margins.zero),
              'h3': Style(margin: Margins.zero),
            },
            shrinkWrap: true,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
