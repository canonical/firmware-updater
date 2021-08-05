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
  bool? _showAllDevices;

  bool get isBusy => status.index > FwupdStatus.idle.index;
  FwupdStatus get status => _client.status;
  int get percentage => _client.percentage;
  String get daemonVersion => _client.daemonVersion;

  bool get showAllDevices => _showAllDevices ?? false;
  set showAllDevices(bool? value) {
    if (_showAllDevices == value) return;
    _showAllDevices = value;
    notifyListeners();
  }

  Iterable<FwupdDevice> get devices => _devices;

  Future<void> init() => _client.connect().then((_) => refresh());

  Future<void> refresh() => _fetchDevices();

  Future<void> _fetchDevices() async {
    final devices = await _client.getDevices();
    if (_devices == devices) return;
    _devices = devices;
    notifyListeners();
  }

  @override
  Future<void> dispose() async {
    await _client.close();
    super.dispose();
  }
}

class FwupdDeviceModel extends ChangeNotifier {
  FwupdDeviceModel({
    required FwupdDevice device,
    required FwupdClient client,
  })  : _device = device,
        _client = client;

  final FwupdDevice _device;
  final FwupdClient _client;
  var _upgrades = <FwupdUpgrade>[];

  String get name => _device.name;

  List<FwupdUpgrade> get upgrades => _upgrades;

  Future<void> init() async => _fetchUpgrades();

  Future<void> _fetchUpgrades() async {
    var upgrades = <FwupdUpgrade>[];
    try {
      upgrades = await _client.getUpgrades(_device.deviceId);
    } catch (_) {}
    if (_upgrades == upgrades) return;
    _upgrades = upgrades;
    notifyListeners();
  }

  Future<void> activate() => _client.activate(_device.deviceId);
  Future<void> clearResults() => _client.clearResults(_device.deviceId);
  Future<void> unlock() => _client.activate(_device.deviceId);
  Future<void> verify() => _client.verify(_device.deviceId);
  Future<void> verifyUpdate() => _client.verifyUpdate(_device.deviceId);
}
