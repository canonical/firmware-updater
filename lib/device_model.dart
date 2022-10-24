import 'dart:async';

import 'package:collection/collection.dart';
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
    return _service.getReleases(_device).catchError(
          (_) => <FwupdRelease>[],
          test: (e) =>
              e is FwupdNothingToDoException || e is FwupdNotSupportedException,
        );
  }

  FwupdRelease? findRelease(String? version) =>
      releases?.singleWhereOrNull((r) => r.version == version);

  Future<void> verify() => _service.verify(_device);
  Future<void> verifyUpdate() => _service.verifyUpdate(_device);

  Future<void> install(FwupdRelease release) =>
      _service.install(device, release);

  bool hasUpgrade() => _releases?.any((r) => r.isUpgrade) == true;
}
