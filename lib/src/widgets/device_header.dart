import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';

import 'small_chip.dart';

class DeviceHeader extends StatelessWidget {
  const DeviceHeader({
    super.key,
    required this.device,
    required this.hasUpgrade,
  });

  final FwupdDevice device;
  final bool hasUpgrade;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return YaruMasterTile(
      title: Text(device.name),
      subtitle: Text(device.summary ?? ''),
      leading: Icon(DeviceIcon.fromName(device.icon.firstOrNull)),
      trailing: hasUpgrade
          ? SmallChip(
              text: l10n.update,
              color: Theme.of(context)
                      .elevatedButtonTheme
                      .style!
                      .backgroundColor!
                      .resolve({}) ??
                  Theme.of(context).primaryColor,
            )
          : null,
    );
  }
}
