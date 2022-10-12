import 'dart:async';

import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';

import 'fwupd_service.dart';
import 'fwupd_x.dart';

class DeviceModel extends SafeChangeNotifier {
  DeviceModel(this._device, this._service);

  final FwupdService _service;
  FwupdDevice _device;
  List<FwupdRelease>? _releases;
  StreamSubscription? _sub;
  FwupdException? _error;
  FwupdException? get error => _error;

  var _state = DeviceState.idle;
  DeviceState get state => _state;
  set state(DeviceState state) {
    _state = state;
    notifyListeners();
  }

  Future<void> init() async {
    _sub =
        _service.deviceChanged.where((d) => d.id == _device.id).listen(update);
    return update(device);
  }

  @override
  Future<void> dispose() async {
    await _sub?.cancel();
    super.dispose();
  }

  Future<void> reboot() => _service.reboot();

  Future<void> update(FwupdDevice device) async {
    _device = device;
    _releases = await _fetchReleases();
    if (_selectedRelease != null) {
      _selectedRelease = _releases?.singleWhere(
          (release) => release.version == _selectedRelease?.version);
    }
    notifyListeners();
  }

  FwupdRelease? _selectedRelease;
  FwupdRelease? get selectedRelease => _selectedRelease;
  set selectedRelease(FwupdRelease? release) {
    _selectedRelease = release;
    notifyListeners();
  }

  FwupdDevice get device => _device;
  List<FwupdRelease>? get releases => _releases;
  bool get onBattery => _service.onBattery;

  Future<List<FwupdRelease>> _fetchReleases() {
    return _service.getReleases(_device.id).catchError(
          (_) => <FwupdRelease>[],
          test: (e) =>
              e is FwupdNothingToDoException || e is FwupdNotSupportedException,
        );
  }

  Future<void> verify() => _service.verify(_device);
  Future<void> verifyUpdate() => _service.verifyUpdate(_device);

  Future<void> install(FwupdRelease release) async {
    try {
      state = DeviceState.busy;
      await _service.install(device, release);
      state = device.flags.contains(FwupdDeviceFlag.needsReboot)
          ? DeviceState.needsReboot
          : state = DeviceState.idle;
    } on FwupdException catch (error) {
      log.error('installation failed $error');
      state = DeviceState.error;
      _error = error;
    }
  }

  bool hasUpgrade() => _releases?.any((r) => r.isUpgrade) == true;
}

enum DeviceState {
  idle,
  busy,
  error,
  needsReboot,
}
