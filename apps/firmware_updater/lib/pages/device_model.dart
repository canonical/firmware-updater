import 'dart:async';

import 'package:collection/collection.dart';
import 'package:firmware_updater/app.dart';
import 'package:firmware_updater/services.dart';
import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';

class DeviceModel extends SafeChangeNotifier {
  DeviceModel(this._device, this._service);
  final FwupdService _service;

  FwupdDevice _device;
  List<FwupdRelease>? _releases;
  StreamSubscription<FwupdDevice>? _sub;

  FwupdDevice get device => _device;

  bool get hasUpgrade => _releases?.any((r) => r.isUpgrade) ?? false;

  FwupdRelease? get latestRelease => _releases?.firstOrNull;

  // TODO: ensure releases are in the correct order - it might be necessary to
  // implement version comparison

  bool get onBattery => _service.onBattery;
  List<FwupdRelease>? get releases => _releases;
  @override
  Future<void> dispose() async {
    await _sub?.cancel();
    super.dispose();
  }

  FwupdRelease? findRelease(String? version) =>
      releases?.singleWhereOrNull((r) => r.version == version);

  Future<void> init() async {
    _sub =
        _service.deviceChanged.where((d) => d.id == _device.id).listen(update);
    return update(device);
  }

  Future<void> install(FwupdRelease release) =>
      _service.install(device, release);

  Future<void> update(FwupdDevice device) async {
    _device = device;
    _releases = await _fetchReleases();
    notifyListeners();
  }

  Future<void> verify() => _service.verify(_device);

  Future<void> verifyUpdate() => _service.verifyUpdate(_device);

  Future<List<FwupdRelease>> _fetchReleases() {
    return _service.getReleases(_device).catchError(
          (_) => <FwupdRelease>[],
          test: (e) =>
              e is FwupdNothingToDoException || e is FwupdNotSupportedException,
        );
  }
}
