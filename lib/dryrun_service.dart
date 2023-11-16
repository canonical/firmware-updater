import 'dart:io';

import 'package:fwupd/fwupd.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaml/yaml.dart';

import 'operation_handler.dart';

final log = Logger('fwupd_service');

// Mainly no-op methods for testing
class DryrunService extends OperationHandler {
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
    const yamlPath = String.fromEnvironment('YAML_FILE_PATH');

    if (yamlPath.isEmpty) {
      log.debug('No YAML file path provided');
      return Future.value([]);
    }

    final file = File(yamlPath);
    final YamlList doc = loadYaml(file.readAsStringSync());

    return Future.value([
      for (final device in doc)
        FwupdDevice(
          deviceId: device['deviceId'],
          name: device['name'],
          vendor: device['vendor'],
          version: device['version'],
          versionBootloader: device['versionBootloader'],
          versionLowest: device['versionLowest'],
          versionFormat: FwupdVersionFormat.values
              .firstWhere((e) => e.toString() == device['versionFormat']),
          protocol: device['protocol'],
          plugin: device['plugin'],
          guid: [device['guid']],
          vendorId: device['vendorId'],
          icon: [device['icon']],
          checksum: device['checksum'],
          created: (device['created'] != null)
              ? DateTime.parse(device['created'])
              : null,
          modified: (device['modified'] != null)
              ? DateTime.parse(device['modified'])
              : null,
          parentDeviceId: device['parentDeviceId'],
          flags: (device['flags'] as YamlList)
              .value
              .map((e) => FwupdDeviceFlag.values
                  .firstWhere((f) => f.toString() == e.toString()))
              .toSet(),
          summary: device['summary'],
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
  Future<void> install(FwupdDevice device, FwupdRelease release,
      [ResourceHandle Function(RandomAccessFile file)?
          resourceHandleFromFile]) {
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
      Future<bool> Function() confirmationListener) {}

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
