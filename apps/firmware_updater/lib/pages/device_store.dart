import 'dart:async';

import 'package:firmware_updater/services.dart';
import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final log = Logger('device_store');

class DeviceStore extends SafeChangeNotifier {
  DeviceStore(this._service);
  final FwupdService _service;

  // Updatable devices in the order reported by fwupd.
  var _fwupdDevices = <FwupdDevice>[];
  var _devices = <FwupdDevice>[];
  final _upgradable = <String>{};
  final _pendingChecks = <String, Object>{};
  StreamSubscription<FwupdDevice>? _deviceAdded;
  StreamSubscription<FwupdDevice>? _deviceChanged;
  StreamSubscription<FwupdDevice>? _deviceRemoved;
  bool _showReleases = false;

  /// Devices with an available upgrade first, the rest in fwupd's order.
  List<FwupdDevice> get devices => _devices;
  bool get showReleases => _showReleases;

  bool hasUpgrade(String deviceId) => _upgradable.contains(deviceId);

  set showReleases(bool value) {
    if (value == _showReleases) return;
    _showReleases = value;
    notifyListeners();
  }

  @override
  Future<void> dispose() async {
    await _deviceAdded?.cancel();
    await _deviceChanged?.cancel();
    await _deviceRemoved?.cancel();
    _deviceAdded = null;
    _deviceChanged = null;
    _deviceRemoved = null;
    super.dispose();
  }

  int indexOf(String? deviceId) =>
      _devices.indexWhere((d) => d.deviceId == deviceId);

  Future<void> init() async {
    _deviceAdded = _service.deviceAdded.listen((device) {
      if (device.isUpdatable) {
        log.debug('added $device');
        _fwupdDevices.add(device);
        _update();
        _checkUpgrade(device).then((changed) => changed ? _update() : null);
      } else {
        log.debug('ignored $device');
      }
    });

    _deviceChanged = _service.deviceChanged.listen((device) {
      if (_fwupdDevices.any((d) => d.id == device.id)) {
        _checkUpgrade(device).then((changed) => changed ? _update() : null);
      }
    });

    _deviceRemoved = _service.deviceRemoved.listen((device) {
      final index = _fwupdDevices.indexWhere((d) => d.id == device.id);
      if (index != -1) {
        log.debug('removed $device');
        _fwupdDevices.removeAt(index);
        _upgradable.remove(device.id);
        _update();
      }
    });

    return refresh();
  }

  Future<void> refresh() async {
    final devices = await _service.getDevices().then<List<FwupdDevice>?>(
      (devices) => devices,
      onError: (e) {
        log.error('failed to get devices: $e');
        return null;
      },
    );
    if (devices == null) return;

    _fwupdDevices = devices.where((device) => device.isUpdatable).toList();
    _upgradable.removeWhere((id) => !_fwupdDevices.any((d) => d.id == id));
    await Future.wait(_fwupdDevices.map(_checkUpgrade));
    log.debug(
      '${_fwupdDevices.length} devices, ${_upgradable.length} upgrades',
    );
    _update();
  }

  // Re-sorts and notifies in one go, so that listeners never observe [devices]
  // in a different order than the one they were last notified about.
  void _update() {
    _devices = [
      ..._fwupdDevices.where((d) => hasUpgrade(d.id)),
      ..._fwupdDevices.where((d) => !hasUpgrade(d.id)),
    ];
    notifyListeners();
  }

  /// Returns whether the upgrade status of [device] changed.
  Future<bool> _checkUpgrade(FwupdDevice device) async {
    final check = _pendingChecks[device.id] = Object();
    final hasUpgrade = await _fetchHasUpgrade(device);
    // A newer check for the same device was started in the meantime.
    if (!identical(_pendingChecks[device.id], check)) return false;
    _pendingChecks.remove(device.id);

    if (hasUpgrade == null || !_fwupdDevices.any((d) => d.id == device.id)) {
      return false;
    }
    return hasUpgrade
        ? _upgradable.add(device.id)
        : _upgradable.remove(device.id);
  }

  /// Returns `null` if the status couldn't be determined, e.g. because fwupd
  /// is busy installing, in which case the previous status is kept.
  Future<bool?> _fetchHasUpgrade(FwupdDevice device) =>
      Future.sync(() => _service.getReleases(device))
          .then<bool?>((releases) => releases.any((r) => r.isUpgrade))
          .catchError(
            (_) => false,
            test: (e) =>
                e is FwupdNothingToDoException ||
                e is FwupdNotSupportedException,
          )
          .catchError((Object e) {
            log.warning('failed to get releases for ${device.id}: $e');
            return null;
          });
}

extension DeviceStoreWhen on DeviceStore {
  T when<T extends Object?>({
    required T Function() empty,
    required T Function(List<FwupdDevice> devices) devices,
  }) {
    if (this.devices.isEmpty) {
      return empty();
    } else {
      return devices(this.devices);
    }
  }
}
