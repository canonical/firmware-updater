import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fwupd/fwupd.dart';

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

class ReleaseDialog extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(device.name),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
      content: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [...upgrades, ...downgrades].map((release) {
            return Flexible(
              child: Html(
                data:
                    '<h3>${release.version}</h3>${release.summary}${release.description}',
                shrinkWrap: true,
              ),
            );
          }).toList(),
        ),
      ),
      actionsPadding: const EdgeInsets.all(8.0),
      actions: [
        OutlinedButton(
          child: const Text('Update'),
          onPressed: () {
            // TODO: allow selecting the upgrade or downgrade
            onInstall(upgrades.first);
            Navigator.of(context).pop();
          },
        ),
        OutlinedButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('Cancel'),
        )
      ],
    );
  }
}
