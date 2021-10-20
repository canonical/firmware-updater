import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'fwupd_models.dart';

Future<void> showUpdateDialog(BuildContext context, FwupdDeviceModel model) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(model.name),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
        content: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: model.upgrades.map((upgrade) {
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
              model.install(model.upgrades.first);
              Navigator.of(context).pop();
            },
          ),
          OutlinedButton(
            onPressed: Navigator.of(context).pop,
            child: const Text('Cancel'),
          )
        ],
      );
    },
  );
}
