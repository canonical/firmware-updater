import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fwupd/fwupd.dart';
import 'package:gtk_application/gtk_application.dart';
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
  YaruPageController? _controller;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    final fwupdNotifier = context.read<FwupdNotifier>();
    final store = context.read<DeviceStore>();
    final gtkNotifier = getService<GtkApplicationNotifier>();

    fwupdNotifier
      ..init()
      ..registerErrorListener(_showError)
      ..registerConfirmationListener(_getConfirmation)
      ..registerDeviceRequestListener(_showRequest);
    store.init().then((_) {
      _controller = YaruPageController(length: store.devices.length);
      _commandLineListener(gtkNotifier.commandLine!);
      setState(() {
        _initialized = true;
      });
    });
    gtkNotifier.addCommandLineListener(_commandLineListener);
  }

  @override
  void dispose() {
    final gtkNotifier = getService<GtkApplicationNotifier>();
    gtkNotifier.removeCommandLineListener(_commandLineListener);
    super.dispose();
  }

  void _commandLineListener(List<String> args) {
    final store = context.read<DeviceStore>();
    _controller?.index = store.indexOf(args.firstOrNull);
    store.showReleases = args.isNotEmpty;
  }

  void _showRequest(FwupdDevice device) {
    showDeviceRequestDialog(
      context,
      message: device.updateMessage,
      imageUrl: device.updateImage,
    );
  }

  void _showError(Exception e) {
    showErrorDialog(
      context,
      title: AppLocalizations.of(context).installError,
      message: e is FwupdException ? e.localize(context) : e.toString(),
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
    final l10n = AppLocalizations.of(context);
    return _initialized
        ? ErrorBanner(
            message: context.select<FwupdNotifier, bool>(
                    (notifier) => notifier.onBattery)
                ? l10n.batteryWarning
                : null,
            child: YaruMasterDetailPage(
              appBar: YaruWindowTitleBar(title: Text(l10n.appTitle)),
              controller: _controller,
              onSelected: (value) {
                store.showReleases = false;
              },
              pageBuilder: (context, index) =>
                  DetailPage.create(context, device: store.devices[index]),
              tileBuilder: (context, index, selected) =>
                  DeviceTile.create(context, device: store.devices[index]),
              emptyBuilder: (_) => Scaffold(
                appBar: YaruWindowTitleBar(title: Text(l10n.appTitle)),
                body: Center(child: Text(l10n.noDevicesFound)),
              ),
            ),
          )
        : const Center(child: YaruCircularProgressIndicator());
  }
}
