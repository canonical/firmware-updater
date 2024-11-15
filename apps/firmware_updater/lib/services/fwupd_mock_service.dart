import 'dart:io';

import 'package:firmware_updater/services/fwupd_service.dart';
import 'package:fwupd/fwupd.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaml/yaml.dart';

final log = Logger('fwupd_service');

// Mainly no-op methods for testing
class FwupdMockService extends FwupdService {
  FwupdMockService({this.simulateYamlFilePath});

  String? simulateYamlFilePath;

  @override
  Future<void> activate(FwupdDevice device) {
    return Future.value();
  }

  @override
  Future<void> clearResults(FwupdDevice device) {
    return Future.value();
  }

  @override
  String get daemonVersion => '';

  @override
  Stream<FwupdDevice> get deviceAdded => const Stream.empty();

  @override
  Stream<FwupdDevice> get deviceChanged => const Stream.empty();

  @override
  Stream<FwupdDevice> get deviceRemoved => const Stream.empty();

  @override
  Stream<FwupdDevice> get deviceRequest => const Stream.empty();

  @override
  Future<void> init() {
    return Future.value();
  }

  @override
  Future<void> dispose() {
    return Future.value();
  }

  @override
  Future<List<FwupdDevice>> getDevices() {
    if ((simulateYamlFilePath ?? '').isEmpty) {
      log.debug('No YAML file path provided');
      return Future.value([]);
    }

    final file = File(simulateYamlFilePath!);
    final doc = loadYaml(file.readAsStringSync()) as YamlList;

    return Future.value([
      for (final device in doc)
        FwupdDevice(
          deviceId: device['deviceId'] as String,
          name: device['name'] as String,
          vendor: device['vendor'] as String?,
          version: device['version'] as String?,
          versionBootloader: device['versionBootloader'] as String?,
          versionLowest: device['versionLowest'] as String?,
          versionFormat: FwupdVersionFormat.values
              .firstWhere((e) => e.toString() == device['versionFormat']),
          protocol: device['protocol'] as String?,
          plugin: device['plugin'] as String,
          guid: device['guid'] == null ? [] : [device['guid'] as String],
          vendorId: device['vendorId'] as String?,
          icon: device['icon'] == null ? [] : [device['icon'] as String],
          checksum: device['checksum'] as String?,
          created: (device['created'] != null)
              ? DateTime.parse(device['created'] as String)
              : null,
          modified: (device['modified'] != null)
              ? DateTime.parse(device['modified'] as String)
              : null,
          parentDeviceId: device['parentDeviceId'] as String?,
          flags: (device['flags'] as YamlList)
              .value
              .map(
                (e) => FwupdDeviceFlag.values.firstWhere(
                  (f) => f.toString() == e.toString(),
                ),
              )
              .toSet(),
          summary: device['summary'] as String?,
          updateState: FwupdUpdateState.values
              .firstWhere((e) => e.toString() == device['updateState']),
        ),
    ]);
  }

  @override
  Future<List<FwupdRelease>> getDowngrades(FwupdDevice device) {
    return Future.value([]);
  }

  @override
  Future<List<FwupdPlugin>> getPlugins() {
    return Future.value([]);
  }

  @override
  Future<List<FwupdRelease>> getReleases(FwupdDevice device) {
    return Future.value([]);
  }

  @override
  Future<List<FwupdRemote>> getRemotes() {
    return Future.value([]);
  }

  @override
  Future<List<FwupdRelease>> getUpgrades(FwupdDevice device) {
    return Future.value([]);
  }

  @override
  Future<void> install(
    FwupdDevice device,
    FwupdRelease release, [
    ResourceHandle Function(RandomAccessFile file)? resourceHandleFromFile,
  ]) {
    return Future.value();
  }

  @override
  int get percentage => 1;

  @override
  Stream<List<String>> get propertiesChanged => const Stream.empty();

  @override
  Future<void> reboot() {
    return Future.value();
  }

  @override
  Future<void> refreshProperties() {
    return Future.value();
  }

  @override
  void registerConfirmationListener(
    Future<bool> Function() confirmationListener,
  ) {}

  @override
  void registerErrorListener(Function(Exception e) errorListener) {}

  @override
  FwupdStatus get status => FwupdStatus.idle;

  @override
  Future<void> unlock(FwupdDevice device) {
    return Future.value();
  }

  @override
  Future<void> verify(FwupdDevice device) {
    return Future.value();
  }

  @override
  Future<void> verifyUpdate(FwupdDevice device) {
    return Future.value();
  }

  @override
  bool get onBattery => false;
}
