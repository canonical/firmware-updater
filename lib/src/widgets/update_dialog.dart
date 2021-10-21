import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fwupd/fwupd.dart';

Future<void> showUpdateDialog(
  BuildContext context, {
  required FwupdDevice device,
  required List<FwupdRelease> upgrades,
  required ValueChanged<FwupdRelease> onUpgrade,
}) {
  return showDialog(
    context: context,
    builder: (_) => UpdateDialog(
      device: device,
      upgrades: upgrades,
      onUpdate: onUpgrade,
    ),
  );
}

class UpdateDialog extends StatelessWidget {
  const UpdateDialog({
    Key? key,
    required this.device,
    required this.upgrades,
    required this.onUpdate,
  }) : super(key: key);

  final FwupdDevice device;
  final List<FwupdRelease> upgrades;
  final ValueChanged<FwupdRelease> onUpdate;

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
          children: upgrades.map((upgrade) {
            return Flexible(
              child: Html(
                data:
                    '<h3>${upgrade.version}</h3>${upgrade.summary}${upgrade.description}',
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
            // TODO: allow selecting the upgrade
            onUpdate(upgrades.first);
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
