import 'dart:async';
import 'dart:collection';

import 'package:fwupd/fwupd.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'fwupd_service.dart';
import 'fwupd_x.dart';

final log = Logger('device_store');

class DeviceStore extends SafeChangeNotifier {
  DeviceStore(this._service);

  final FwupdService _service;
  var _devices = <FwupdDevice>[];
  StreamSubscription<FwupdDevice>? _deviceAdded;
  StreamSubscription<FwupdDevice>? _deviceRemoved;

  String _searchQuery = '';
  String get searchQuery => _searchQuery;
  set searchQuery(String value) {
    if (value == _searchQuery) return;
    _searchQuery = value;
    notifyListeners();
  }

  bool _showReleases = false;
  bool get showReleases => _showReleases;
  set showReleases(bool value) {
    if (value == _showReleases) return;
    _showReleases = value;
    notifyListeners();
  }

  UnmodifiableListView<FwupdDevice> get devices =>
      UnmodifiableListView(_devices.where((device) =>
          device.name.toLowerCase().contains(_searchQuery.toLowerCase())));
  int indexOf(String? deviceId) =>
      devices.indexWhere((d) => d.deviceId == deviceId);

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
    return _service.getDevices().then((devices) {
      _devices = devices.where((device) => device.isUpdatable).toList();
      log.debug('${_devices.length} devices');
      notifyListeners();
    });
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
    required T Function(UnmodifiableListView<FwupdDevice> devices) devices,
  }) {
    if (this.devices.isEmpty) {
      return empty();
    } else {
      return devices(this.devices);
    }
  }
}
