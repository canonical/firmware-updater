import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'detail_page.dart';
import 'device_store.dart';
import 'device_tile.dart';
import 'fwupd_l10n.dart';
import 'fwupd_notifier.dart';
import 'fwupd_service.dart';
import 'widgets.dart';

class FirmwareApp extends StatefulWidget {
  const FirmwareApp({super.key});

  static Widget create(BuildContext context) {
    final service = getService<FwupdService>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DeviceStore(service)),
        ChangeNotifierProvider(create: (_) => FwupdNotifier(service)),
      ],
      child: const FirmwareApp(),
    );
  }

  @override
  State<FirmwareApp> createState() => _FirmwareAppState();
}

class _FirmwareAppState extends State<FirmwareApp> {
  @override
  void initState() {
    super.initState();
    context.read<DeviceStore>().init();
    context.read<FwupdNotifier>().init();
    getService<FwupdService>()
      ..registerErrorListener(_showError)
      ..registerConfirmationListener(_getConfirmation);
  }

  void _showError(FwupdException e) {
    showErrorDialog(
      context,
      title: AppLocalizations.of(context).installError,
      message: e.localize(context),
    );
  }

  Future<bool> _getConfirmation() async {
    final response = await showConfirmationDialog(
      context,
      title: AppLocalizations.of(context).rebootConfirm,
      actionText: AppLocalizations.of(context).reboot,
    );

    return response == DialogAction.action;
  }

  @override
  Widget build(BuildContext context) {
    final store = context.watch<DeviceStore>();
    final notifier = context.watch<FwupdNotifier>();
    final l10n = AppLocalizations.of(context);
    return store.when(
      devices: (devices) => ErrorBanner(
        message: notifier.onBattery ? l10n.batteryWarning : null,
        child: YaruMasterDetailPage(
          length: devices.length,
          pageBuilder: (context, index) =>
              DetailPage.create(context, device: devices[index]),
          tileBuilder: (context, index, selected) =>
              DeviceTile.create(context, device: devices[index]),
          leftPaneWidth: 400,
        ),
      ),
      empty: () => const Center(child: YaruCircularProgressIndicator()),
    );
  }
}
