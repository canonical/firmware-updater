import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:fwupd/fwupd.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'fwupd_x.dart';
import 'service.dart';

final log = Logger('model');

class FwupdModel extends ChangeNotifier {
  FwupdModel(this._service);

  final FwupdService _service;
  var _devices = <FwupdDevice>[];
  final _releases = <String, List<FwupdRelease>>{};
  StreamSubscription<FwupdDevice>? _deviceAdded;
  StreamSubscription<FwupdDevice>? _deviceChanged;
  StreamSubscription<FwupdDevice>? _deviceRemoved;
  void Function(String error)? _onError;

  List<FwupdDevice> get devices => _devices;
  List<FwupdRelease> releases(FwupdDevice device) => _releases[device.id] ?? [];
  bool hasUpgrade(FwupdDevice device) =>
      _releases[device.id]?.firstWhereOrNull((release) => release.isUpgrade) !=
      null;

  Future<void> init({required void Function(String error) onError}) {
    _onError = onError;
    // TODO: sync _devices
    _deviceAdded = _service.deviceAdded.listen((device) {
      log.debug('added $device');
      _fetchDevices();
    });
    _deviceChanged = _service.deviceChanged.listen((device) {
      log.debug('changed $device');
      _fetchDevices();
    });
    _deviceRemoved = _service.deviceRemoved.listen((device) {
      log.debug('removed $device');
      _fetchDevices();
    });
    return _service.init().then((_) => refresh());
  }

  Future<void> refresh() => _fetchDevices();

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
    } on Exception catch (e) {
      _onError?.call(e.toString());
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

  Future<void> _fetchDevices() async {
    var devices = <FwupdDevice>[];
    try {
      devices = await _service.getDevices().then((devices) {
        return devices.where((device) {
          if (!device.isUpdatable) return false;
          _fetchReleases(device);
          return true;
        }).toList();
      });
    } on FwupdException catch (_) {}
    _devices = devices;
    notifyListeners();
  }

  Future<void> _fetchReleases(FwupdDevice device) async {
    _releases[device.id] = await _service
        .getReleases(device.id)
        .catchError((_) => <FwupdRelease>[], test: (e) => e is FwupdException);
    notifyListeners();
  }
}
