import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';

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
    Key? key,
    required this.device,
    required this.releases,
    required this.onInstall,
  }) : super(key: key);

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
        OutlinedButton(
          child: Text(_selected?.isDowngrade == true
              ? 'Downgrade'
              : _selected?.isUpgrade == false
                  ? 'Reinstall'
                  : 'Upgrade'),
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

extension _FwupdReleaseX on FwupdRelease {
  bool get isUpgrade => flags.contains(FwupdReleaseFlag.isUpgrade);
  bool get isDowngrade => flags.contains(FwupdReleaseFlag.isDowngrade);
}
