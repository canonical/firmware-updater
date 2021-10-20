import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:fwupd/fwupd.dart';

class FwupdModel extends ChangeNotifier {
  FwupdModel(
    this._client,
  ) {
    _client.propertiesChanged.listen((_) => notifyListeners());
  }

  final FwupdClient _client;
  var _devices = <FwupdDevice>[];

  bool get isBusy => status.index > FwupdStatus.idle.index;
  FwupdStatus get status => _client.status;
  int get percentage => _client.percentage;
  String get daemonVersion => _client.daemonVersion;

  List<FwupdDevice> get devices => _devices;

  Future<void> init() => _client.connect().then((_) => refresh());

  Future<void> refresh() => _fetchDevices();

  Future<void> _fetchDevices() async {
    final devices = await _client.getDevices().then((devices) {
      return devices.where((device) => device.isUpdatable).toList();
    });
    if (_devices == devices) return;
    _devices = devices;
    notifyListeners();
  }
}

class FwupdDeviceModel extends ChangeNotifier {
  FwupdDeviceModel(FwupdDevice device, {required FwupdClient client})
      : _device = device,
        _client = client;

  final FwupdDevice _device;
  final FwupdClient _client;
  var _upgrades = <FwupdRelease>[];

  FwupdDevice get device => _device;

  String get name => _device.name;
  String get summary => _device.summary ?? '';
  List<String> get icon => _device.icon;

  bool get hasUpgrades => _upgrades.isNotEmpty;
  List<FwupdRelease> get upgrades => _upgrades;

  Future<void> init() async => _fetchUpgrades();

  Future<void> _fetchUpgrades() async {
    var upgrades = <FwupdRelease>[];
    try {
      upgrades = await _client.getUpgrades(_device.deviceId);
    } catch (_) {}
    if (_upgrades == upgrades) return;
    _upgrades = upgrades;
    notifyListeners();
  }

  Future<void> install(FwupdRelease upgrade) {
    assert(upgrade.locations.isNotEmpty);
    // TODO: FwupdRemote.filenameCache;
    const cache = '/usr/share/installed-tests/fwupd';
    final file = File('$cache/${upgrade.locations.first}');
    return _client.install(
      _device.deviceId,
      ResourceHandle.fromFile(file.openSync()),
    );
  }

  Future<void> activate() => _client.activate(_device.deviceId);
  Future<void> clearResults() => _client.clearResults(_device.deviceId);
  Future<void> unlock() => _client.activate(_device.deviceId);
  Future<void> verify() => _client.verify(_device.deviceId);
  Future<void> verifyUpdate() => _client.verifyUpdate(_device.deviceId);
}

extension FwupdDeviceX on FwupdDevice {
  bool get isUpdatable =>
      flags.contains(FwupdDeviceFlag.updatable) ||
      flags.contains(FwupdDeviceFlag.updatableHidden);
}
