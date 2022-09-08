import 'dart:async';

import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'fwupd_x.dart';
import 'service.dart';
import 'state.dart';

final log = Logger('model');

class FwupdModel extends SafeChangeNotifier {
  FwupdModel(this._service);

  final FwupdService _service;
  var _state = FwupdState.none;

  StreamSubscription<FwupdDevice>? _deviceAdded;
  StreamSubscription<FwupdDevice>? _deviceChanged;
  StreamSubscription<FwupdDevice>? _deviceRemoved;

  FwupdState get state => _state;

  void _setState(FwupdState state) {
    if (_state == state) return;
    _state = state;
    notifyListeners();
  }

  Future<void> init() {
    return _service.init().then((_) {
      // TODO: sync _devices
      _deviceAdded = _service.deviceAdded.listen((device) {
        log.debug('added $device');
        refresh();
      });
      _deviceChanged = _service.deviceChanged.listen((device) {
        log.debug('changed $device');
        refresh();
      });
      _deviceRemoved = _service.deviceRemoved.listen((device) {
        log.debug('removed $device');
        refresh();
      });
      return refresh();
    });
  }

  Future<void> refresh() async => _setState(await _fetchState());

  @override
  void dispose() {
    _deviceAdded?.cancel();
    _deviceAdded = null;
    _deviceChanged?.cancel();
    _deviceChanged = null;
    _deviceRemoved?.cancel();
    _deviceRemoved = null;
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
    var devices = <FwupdDevice>[];
    var releases = <String, List<FwupdRelease>>{};
    var remotes = <String, FwupdRemote>{};

    try {
      devices = await _fetchDevices();
      releases = await _fetchReleases(devices);
      remotes = await _fetchRemotes();
    } on FwupdException catch (_) {}

    return FwupdState.data(
      devices: devices,
      releases: releases,
      remotes: remotes,
    );
  }

  Future<List<FwupdDevice>> _fetchDevices() {
    return _service.getDevices().then((devices) {
      return devices.where((device) => device.isUpdatable).toList();
    });
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
