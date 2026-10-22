import 'package:collection/collection.dart';
import 'package:firmware_updater/app.dart';
import 'package:firmware_updater/l10n/app_localizations.dart';
import 'package:firmware_updater/pages.dart';
import 'package:firmware_updater/services.dart';
import 'package:firmware_updater/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fwupd/fwupd.dart';
import 'package:gtk/gtk.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';

class FirmwareApp extends StatefulWidget {
  const FirmwareApp({super.key});

  @override
  State<FirmwareApp> createState() => _FirmwareAppState();

  static Widget create(BuildContext context) {
    final service = hasService<FwupdMockService>()
        ? getService<FwupdMockService>()
        : getService<FwupdDbusService>();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DeviceStore(service)),
        ChangeNotifierProvider(create: (_) => FwupdNotifier(service)),
      ],
      child: const FirmwareApp(),
    );
  }
}

class _FirmwareAppState extends State<FirmwareApp> {
  late final DeviceStore _store;
  YaruPageController? _controller;
  bool _initialized = false;

  // The focused device, tracked by id so that it stays focused when the list
  // is re-sorted. Updated when the controller index changes (taps, command
  // line) and by the detail pages themselves, which also covers the implicit
  // first page in landscape mode and closing the page in portrait mode.
  String? _selectedId;
  final _shownDeviceIds = <String>[];

  @override
  Widget build(BuildContext context) {
    final store = context.watch<DeviceStore>();
    final l10n = AppLocalizations.of(context);
    return _initialized
        ? ErrorBanner(
            message:
                context.select<FwupdNotifier, bool>(
                  (notifier) => notifier.onBattery,
                )
                ? l10n.batteryWarning
                : null,
            child: YaruMasterDetailPage(
              appBar: YaruWindowTitleBar(title: Text(l10n.appTitle)),
              controller: _controller,
              onSelected: (value) {
                store.showReleases = false;
              },
              pageBuilder: (context, index) => _ShownDevice(
                key: ValueKey(store.devices[index].id),
                deviceId: store.devices[index].id,
                onShown: _onDeviceShown,
                onHidden: _onDeviceHidden,
                child: DetailPage.create(context, device: store.devices[index]),
              ),
              tileBuilder: (context, index, selected, availableWidth) =>
                  DeviceTile.create(context, device: store.devices[index]),
              emptyBuilder: (_) => Scaffold(
                appBar: YaruWindowTitleBar(title: Text(l10n.appTitle)),
                body: Center(child: Text(l10n.noDevicesFound)),
              ),
            ),
          )
        : const Center(child: YaruCircularProgressIndicator());
  }

  @override
  void dispose() {
    final gtkNotifier = getService<GtkApplicationNotifier>();
    gtkNotifier.removeCommandLineListener(_commandLineListener);
    _store.removeListener(_syncSelection);
    _controller?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    final fwupdNotifier = context.read<FwupdNotifier>();
    final store = _store = context.read<DeviceStore>();
    final gtkNotifier = getService<GtkApplicationNotifier>();

    fwupdNotifier
      ..init()
      ..registerErrorListener(_showError)
      ..registerConfirmationListener(_getConfirmation)
      ..registerDeviceRequestListener(_showRequest);
    store.init().then((_) {
      if (!mounted) return;
      _controller = _createController(store.devices.length);
      _commandLineListener(gtkNotifier.commandLine!);
      store.addListener(_syncSelection);
      setState(() {
        _initialized = true;
      });
    });
    gtkNotifier.addCommandLineListener(_commandLineListener);
  }

  YaruPageController _createController(int length, [int initialIndex = -1]) {
    return YaruPageController(length: length, initialIndex: initialIndex)
      ..addListener(_onIndexChanged);
  }

  void _onIndexChanged() {
    final index = _controller!.index;
    final devices = _store.devices;
    _selectedId = index >= 0 && index < devices.length
        ? devices[index].id
        : null;
  }

  void _onDeviceShown(String deviceId) {
    _shownDeviceIds.add(deviceId);
    _selectedId = deviceId;
  }

  void _onDeviceHidden(String deviceId) {
    _shownDeviceIds.remove(deviceId);
    // In portrait mode the page is gone once the user navigated back.
    if (_selectedId == deviceId && !_shownDeviceIds.contains(deviceId)) {
      _selectedId = null;
    }
  }

  // Keeps the focused device selected after the store re-sorted the list.
  void _syncSelection() {
    final controller = _controller;
    if (controller == null) return;
    final index = _store.indexOf(_selectedId);
    if (controller.length != _store.devices.length) {
      // YaruPageController.length is final, so a new controller is needed.
      setState(
        () => _controller = _createController(_store.devices.length, index),
      );
      WidgetsBinding.instance.addPostFrameCallback((_) => controller.dispose());
    } else if (controller.index != index) {
      controller.index = index;
    }
  }

  void _commandLineListener(List<String> args) {
    final store = context.read<DeviceStore>();
    _controller?.index = store.indexOf(args.firstOrNull);
    store.showReleases = args.isNotEmpty;
  }

  Future<bool> _getConfirmation() async {
    final l10n = AppLocalizations.of(context);
    final response = await showConfirmationDialog(
      context,
      body: Text(l10n.rebootConfirmMessage),
      title: l10n.rebootConfirmTitle,
      actionText: l10n.rebootNow,
      cancelText: l10n.rebootLater,
      isPrimaryAction: false,
    );

    return response == DialogAction.secondaryAction;
  }

  void _showError(Exception e) {
    showErrorDialog(
      context,
      title: AppLocalizations.of(context).installError,
      message: e is FwupdException ? e.localize(context) : e.toString(),
    );
  }

  void _showRequest(FwupdDevice device) {
    showDeviceRequestDialog(
      context,
      message: device.updateMessage,
      imageUrl: device.updateImage,
    );
  }
}

/// Reports while the detail page of [deviceId] is on screen.
class _ShownDevice extends StatefulWidget {
  const _ShownDevice({
    required this.deviceId,
    required this.onShown,
    required this.onHidden,
    required this.child,
    super.key,
  });

  final String deviceId;
  final ValueChanged<String> onShown;
  final ValueChanged<String> onHidden;
  final Widget child;

  @override
  State<_ShownDevice> createState() => _ShownDeviceState();
}

class _ShownDeviceState extends State<_ShownDevice> {
  @override
  void initState() {
    super.initState();
    widget.onShown(widget.deviceId);
  }

  @override
  void dispose() {
    widget.onHidden(widget.deviceId);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
