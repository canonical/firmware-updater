import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';

import '../../fwupd_x.dart';
import 'confirmation_dialog.dart';
import 'release_card.dart';

Future<void> showReleaseDialog(
  BuildContext context, {
  required FwupdDevice device,
  required List<FwupdRelease> releases,
  required ValueChanged<FwupdRelease> onInstall,
}) {
  return showDialog(
    context: context,
    builder: (_) => ReleaseDialog(
      device: device,
      releases: releases,
      onInstall: onInstall,
    ),
  );
}

class ReleaseDialog extends StatefulWidget {
  const ReleaseDialog({
    super.key,
    required this.device,
    required this.releases,
    required this.onInstall,
  });

  final FwupdDevice device;
  final List<FwupdRelease> releases;
  final ValueChanged<FwupdRelease> onInstall;

  @override
  State<ReleaseDialog> createState() => _ReleaseDialogState();
}

class _ReleaseDialogState extends State<ReleaseDialog> {
  FwupdRelease? _selected;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final String action;
    final String dialogText;

    if (_selected?.isDowngrade == true) {
      action = l10n.downgrade;
      dialogText = l10n.downgradeConfirm(
        widget.device.name,
        widget.device.version,
        _selected?.version,
      );
    } else if (_selected?.isUpgrade == false) {
      action = l10n.reinstall;
      dialogText = l10n.reinstallConfirm(
        widget.device.name,
        widget.device.version,
      );
    } else {
      action = l10n.upgrade;
      dialogText = l10n.upgradeConfirm(
        widget.device.name,
        widget.device.version,
        _selected?.version,
      );
    }

    return AlertDialog(
      title: Text('${widget.device.name} ${widget.device.version}'),
      titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      contentPadding: const EdgeInsets.all(4),
      content: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: widget.releases.map((release) {
            return Flexible(
              child: ReleaseCard(
                release: release,
                selected: release == _selected,
                onSelected: () => setState(() => _selected = release),
              ),
            );
          }).toList(),
        ),
      ),
      buttonPadding: const EdgeInsets.only(left: 16),
      actionsPadding: const EdgeInsets.fromLTRB(0, 0, 12, 12),
      actions: [
        ElevatedButton(
          onPressed: _selected != null
              ? () {
                  showConfirmationDialog(
                    context,
                    text: dialogText,
                    onConfirm: () {
                      widget.onInstall(_selected!);
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
    );
  }
}
