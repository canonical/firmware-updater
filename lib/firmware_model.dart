import 'dart:async';

import 'package:fwupd/fwupd.dart';
import 'package:meta/meta.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'firmware_state.dart';
import 'fwupd_notifier.dart';
import 'fwupd_service.dart';

final log = Logger('firmware_model');

class FirmwareModel extends SafeChangeNotifier {
  FirmwareModel(this._service) : _monitor = FwupdNotifier(_service) {
    _monitor.addListener(_updateState);
  }

  final FwupdService _service;
  final FwupdNotifier _monitor;
  var _state = const FirmwareState.loading();

  FirmwareState get state => _state;

  @protected
  set state(FirmwareState value) {
    if (_state == value) return;
    _state = value;
    notifyListeners();
  }

  Future<void> _updateState() async => state = await _fetchState();

  Future<void> init() {
    return Future.wait([
      _service.init(),
      _monitor.init(),
    ]).then((_) => _updateState());
  }

  Future<void> reboot() => _service.reboot();
  Future<void> refresh() => _monitor.refresh();

  @override
  void dispose() {
    _monitor.dispose();
    super.dispose();
  }

  Future<void> install(FwupdDevice device, FwupdRelease release) async {
    try {
      await _service.install(device, release);
      // TODO: FwupdException
    } on Exception catch (error, stackTrace) {
      log.error('installation failed $error');
      state = FirmwareState.error(
        error: error,
        stackTrace: stackTrace,
        previous: state,
      );
    }
  }

  Future<void> verify(FwupdDevice device) => _service.verify(device);
  Future<void> verifyUpdate(FwupdDevice device) =>
      _service.verifyUpdate(device);

  Future<FirmwareState> _fetchState() async {
    try {
      return FirmwareState.data(
        devices: List.of(_monitor.devices),
      );
    } on FwupdException catch (_) {
      return FirmwareState.empty;
    }
  }
}
