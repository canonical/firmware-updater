import 'package:flutter/foundation.dart';
import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'device_state.dart';
import 'fwupd_service.dart';
import 'fwupd_x.dart';

final log = Logger('device_model');

class DeviceModel extends SafeChangeNotifier {
  DeviceModel(this._service, this._device);

  final FwupdService _service;
  final FwupdDevice _device;
  var _state = const DeviceState.loading();

  @protected
  set state(DeviceState value) {
    log.debug(value);
    if (_state == value) return;
    _state = value;
    notifyListeners();
  }

  FwupdDevice get device => _device;

  Future<void> refresh() async {
    await _updateState();
    notifyListeners();
  }

  DeviceState get state => _state;

  Future<void> _updateState() async => state = await _fetchState();
  Future<void> init() {
    log.debug('init');
    return _updateState();
    // return _service.init().then((_) => _updateState());
  }

  Future<void> install(FwupdRelease release) async {
    try {
      await _service.install(_device, release);
      // TODO: FwupdException
    } on Exception catch (error, stackTrace) {
      log.error('installation failed $error');
      state = DeviceState.error(
        error: error,
        stackTrace: stackTrace,
        previous: state,
      );
    }
  }

  Future<void> verify() => _service.verify(_device);

  Future<DeviceState> _fetchState() async {
    try {
      return DeviceState.data(
        device: _device,
        releases: await _fetchReleases(),
      );
    } on FwupdException catch (e) {
      return DeviceState.error(error: e);
    }
  }

  Future<List<FwupdRelease>> _fetchReleases() {
    log.debug('fetchReleases ${_device.name}');
    return _service.getReleases(_device.id).catchError(
          (e) => <FwupdRelease>[],
          test: (e) =>
              e is FwupdNothingToDoException || e is FwupdNotSupportedException,
        );
  }
}
