import 'dart:async';

import 'package:firmware_updater/fwupd_service.dart';
import 'package:firmware_updater/fwupd_x.dart';
import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final log = Logger('device_store');

class DeviceStore extends SafeChangeNotifier {
  DeviceStore(this._service);

  final FwupdService _service;
  var _devices = <FwupdDevice>[];
  StreamSubscription<FwupdDevice>? _deviceAdded;
  StreamSubscription<FwupdDevice>? _deviceRemoved;
  bool _showReleases = false;

  bool get showReleases => _showReleases;
  set showReleases(bool value) {
    if (value == _showReleases) return;
    _showReleases = value;
    notifyListeners();
  }

  List<FwupdDevice> get devices => _devices;
  int indexOf(String? deviceId) =>
      _devices.indexWhere((d) => d.deviceId == deviceId);

  Future<void> init() async {
    _deviceAdded = _service.deviceAdded.listen((device) {
      if (device.isUpdatable) {
        log.debug('added $device');
        _devices.add(device);
        notifyListeners();
      } else {
        log.debug('ignored $device');
      }
    });

    _deviceRemoved = _service.deviceRemoved.listen((device) {
      final index = _devices.indexWhere((d) => d.id == device.id);
      if (index != -1) {
        log.debug('removed $device');
        _devices.removeAt(index);
        notifyListeners();
      }
    });

    return refresh();
  }

  Future<void> refresh() {
    return _service.getDevices().then(
      (devices) {
        _devices = devices.where((device) => device.isUpdatable).toList();
        log.debug('${_devices.length} devices');
        notifyListeners();
      },
      onError: (e) {
        log.error('failed to get devices: $e');
      },
    );
  }

  @override
  Future<void> dispose() async {
    await _deviceAdded?.cancel();
    await _deviceRemoved?.cancel();
    _deviceAdded = null;
    _deviceRemoved = null;
    super.dispose();
  }
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
