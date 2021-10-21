import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';

import 'release_card.dart';
import 'small_chip.dart';

Future<void> showReleaseDialog(
  BuildContext context, {
  required FwupdDevice device,
  required List<FwupdRelease> upgrades,
  required List<FwupdRelease> downgrades,
  required ValueChanged<FwupdRelease> onInstall,
}) {
  return showDialog(
    context: context,
    builder: (_) => ReleaseDialog(
      device: device,
      upgrades: upgrades,
      downgrades: downgrades,
      onInstall: onInstall,
    ),
  );
}

class ReleaseDialog extends StatefulWidget {
  const ReleaseDialog({
    Key? key,
    required this.device,
    required this.upgrades,
    required this.downgrades,
    required this.onInstall,
  }) : super(key: key);

  final FwupdDevice device;
  final List<FwupdRelease> upgrades;
  final List<FwupdRelease> downgrades;
  final ValueChanged<FwupdRelease> onInstall;

  @override
  State<ReleaseDialog> createState() => _ReleaseDialogState();
}

class _ReleaseDialogState extends State<ReleaseDialog> {
  FwupdRelease? _selected;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${widget.device.name} ${widget.device.version}'),
      titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      contentPadding: const EdgeInsets.all(4),
      content: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...widget.upgrades.map((upgrade) {
              return ReleaseCard(
                label: 'Upgrade',
                release: upgrade,
                selected: upgrade == _selected,
                onSelected: () => setState(() => _selected = upgrade),
              );
            }).toList(),
            ...widget.downgrades.map((downgrade) {
              return ReleaseCard(
                label: 'Downgrade',
                release: downgrade,
                selected: downgrade == _selected,
                onSelected: () => setState(() => _selected = downgrade),
              );
            }).toList(),
          ],
        ),
      ),
      buttonPadding: const EdgeInsets.only(left: 16),
      actionsPadding: const EdgeInsets.fromLTRB(0, 0, 12, 12),
      actions: [
        OutlinedButton(
          child: const Text('Install'),
          onPressed: _selected != null
              ? () {
                  widget.onInstall(_selected!);
                  Navigator.of(context).pop();
                }
              : null,
        ),
        OutlinedButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('Cancel'),
        )
      ],
    );
  }
}
