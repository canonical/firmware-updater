import 'dart:async';

import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'fwupd_x.dart';
import 'monitor.dart';
import 'service.dart';
import 'state.dart';

final log = Logger('model');

class FwupdModel extends SafeChangeNotifier {
  FwupdModel(this._service) : _monitor = FwupdMonitor(_service) {
    _monitor.addListener(_updateState);
  }

  final FwupdService _service;
  final FwupdMonitor _monitor;
  var _state = FwupdState.none;

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
    ]).then((_) => refresh());
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

  Future<void> activate(FwupdDevice device) => _service.activate(device);

  Future<void> clearResults(FwupdDevice device) {
    return _service.clearResults(device);
  }

  Future<void> unlock(FwupdDevice device) => _service.unlock(device);

  Future<void> verify(FwupdDevice device) => _service.verify(device);

  Future<void> verifyUpdate(FwupdDevice device) {
    return _service.verifyUpdate(device);
  }

  Future<FwupdState> _fetchState() async {
    try {
      return FwupdState.data(
        devices: _monitor.devices,
        releases: await _fetchReleases(_monitor.devices),
        remotes: await _fetchRemotes(),
      );
    } on FwupdException catch (_) {
      return FwupdState.none;
    }
  }

  Future<Map<String, List<FwupdRelease>>> _fetchReleases(
      List<FwupdDevice> devices) async {
    Future<List<FwupdRelease>> fetchReleases(FwupdDevice device) {
      return _service.getReleases(device.id).catchError((_) => <FwupdRelease>[],
          test: (e) => e is FwupdNothingToDoException);
    }

    return {
      for (final device in devices) device.id: await fetchReleases(device),
    };
  }

  Future<Map<String, FwupdRemote>> _fetchRemotes() {
    return _service.getRemotes().then((remotes) {
      return {
        for (final remote in remotes) remote.id: remote,
      };
    });
  }
}
