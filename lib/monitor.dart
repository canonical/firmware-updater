import 'dart:async';

import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'fwupd_x.dart';
import 'service.dart';

final log = Logger('monitor');

class FwupdMonitor extends SafeChangeNotifier {
  FwupdMonitor(this._service);

  final FwupdService _service;
  var _devices = <FwupdDevice>[];
  StreamSubscription<FwupdDevice>? _deviceAdded;
  StreamSubscription<FwupdDevice>? _deviceChanged;
  StreamSubscription<FwupdDevice>? _deviceRemoved;

  List<FwupdDevice> get devices => _devices;

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
    _deviceChanged = _service.deviceChanged.listen((device) {
      final index = _devices.indexWhere((d) => d.id == device.id);
      if (index != -1) {
        log.debug('updated $device');
        _devices[index] = device;
        notifyListeners();
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
    return _service.getDevices().then((devices) {
      _devices = devices.where((device) => device.isUpdatable).toList();
      log.debug('${_devices.length} devices');
      notifyListeners();
    });
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
}
