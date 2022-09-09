import 'dart:async';

import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'device_monitor.dart';
import 'fwupd_x.dart';
import 'service.dart';
import 'state.dart';

final log = Logger('firmware_model');

class FirmwareModel extends SafeChangeNotifier {
  FirmwareModel(this._service) : _monitor = DeviceMonitor(_service) {
    _monitor.addListener(_updateState);
  }

  final FwupdService _service;
  final DeviceMonitor _monitor;
  var _state = FwupdState.empty;

  FwupdState get state => _state;

  void _setState(FwupdState state) {
    if (_state == state) return;
    _state = state;
    notifyListeners();
  }

  Future<void> _updateState() async => _setState(await _fetchState());

  Future<void> init() {
    return Future.wait([
      _service.init(),
      _monitor.init(),
    ]).then((_) => _updateState());
  }

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
      _setState(FwupdState.error(
        error: error,
        stackTrace: stackTrace,
        previous: state,
      ));
    }
  }

  Future<void> verify(FwupdDevice device) => _service.verify(device);

  Future<FwupdState> _fetchState() async {
    try {
      return FwupdState.data(
        devices: _monitor.devices,
        releases: await _fetchReleases(_monitor.devices),
      );
    } on FwupdException catch (_) {
      return FwupdState.empty;
    }
  }

  Future<Map<String, List<FwupdRelease>>> _fetchReleases(
      List<FwupdDevice> devices) async {
    Future<List<FwupdRelease>> fetchReleases(FwupdDevice device) {
      return _service.getReleases(device.id).catchError((_) => <FwupdRelease>[],
          test: (e) => e is FwupdNothingToDoException);
    }

    final all = <String, List<FwupdRelease>>{};
    for (final device in devices) {
      final releases = await fetchReleases(device);
      if (releases.isNotEmpty) {
        all[device.id] = releases;
      }
    }
    return all;
  }
}
