import 'dart:async';

import 'package:firmware_updater/services.dart';
import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final log = Logger('fwupd_notifier');

class FwupdNotifier extends SafeChangeNotifier {
  FwupdNotifier(this._service);

  final FwupdService _service;
  StreamSubscription<List<String>>? _propertiesChanged;
  StreamSubscription<FwupdDevice>? _deviceRequest;

  FwupdStatus get status => _service.status;
  int get percentage => _service.percentage;
  String get version => _service.daemonVersion;
  bool get onBattery => _service.onBattery;

  Future<void> init() async {
    _propertiesChanged ??= _service.propertiesChanged.listen((properties) {
      for (final property in properties) {
        switch (property) {
          case 'Status':
            log.debug(status);
            notifyListeners();
            break;
          case 'Percentage':
            log.debug('$percentage%');
            notifyListeners();
            break;
          case 'OnBattery':
            log.debug('on battery: $onBattery');
            notifyListeners();
            break;
          default:
            log.debug('$property changed');
            break;
        }
      }
    });
  }

  void registerErrorListener(Function(Exception) errorListener) =>
      _service.registerErrorListener(errorListener);

  void registerConfirmationListener(
    Future<bool> Function() confirmationListener,
  ) =>
      _service.registerConfirmationListener(confirmationListener);

  void registerDeviceRequestListener(
    Function(FwupdDevice) deviceRequestListener,
  ) {
    _deviceRequest = _service.deviceRequest.listen(deviceRequestListener);
  }

  Future<void> refresh() => _service.refreshProperties();

  @override
  Future<void> dispose() async {
    await _propertiesChanged?.cancel();
    await _deviceRequest?.cancel();
    _propertiesChanged = null;
    _deviceRequest = null;
    super.dispose();
  }
}
