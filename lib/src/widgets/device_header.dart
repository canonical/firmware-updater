import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';

import 'device_icon.dart';
import 'small_chip.dart';

class DeviceHeader extends StatelessWidget {
  const DeviceHeader({
    Key? key,
    required this.device,
    required this.hasUpgrade,
  }) : super(key: key);

  final FwupdDevice device;
  final bool hasUpgrade;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Stack(
      children: [
        ListTile(
          title: Text(device.name),
          subtitle: Text(device.summary ?? ''),
          leading: DeviceIcon.fromName(device.icon.firstOrNull),
          contentPadding: const EdgeInsets.only(left: 24),
        ),
        if (hasUpgrade)
          Align(
            alignment: Alignment.centerRight,
            child: SmallChip(
              text: l10n.updateAvailable,
              color: Theme.of(context)
                      .elevatedButtonTheme
                      .style!
                      .backgroundColor!
                      .resolve({}) ??
                  Theme.of(context).primaryColor,
            ),
          ),
      ],
    );
  }
}
