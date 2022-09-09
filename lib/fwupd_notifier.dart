import 'dart:async';

import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'fwupd_service.dart';
import 'fwupd_x.dart';

final log = Logger('fwupd_notifier');

class FwupdNotifier extends SafeChangeNotifier {
  FwupdNotifier(this._service);

  final FwupdService _service;
  var _devices = <FwupdDevice>[];
  StreamSubscription<FwupdDevice>? _deviceAdded;
  StreamSubscription<FwupdDevice>? _deviceChanged;
  StreamSubscription<FwupdDevice>? _deviceRemoved;
  StreamSubscription<List<String>>? _propertiesChanged;

  FwupdStatus get status => _service.status;
  int get percentage => _service.percentage;
  String get version => _service.daemonVersion;
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

    _propertiesChanged ??= _service.propertiesChanged.listen((properties) {
      for (final property in properties) {
        switch (property) {
          case 'Status':
            log.debug(status);
            notifyListeners();
            break;
          case 'Percentage':
            log.debug('$percentage%');
            notifyListeners();
            break;
          default:
            log.debug('$property changed');
            break;
        }
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
    await _propertiesChanged?.cancel();
    _deviceAdded = null;
    _deviceChanged = null;
    _deviceRemoved = null;
    _propertiesChanged = null;
    super.dispose();
  }
}
