import 'dart:io';

import 'package:fwupd/fwupd.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaml/yaml.dart';

final log = Logger('fwupd_service');

class DryrunService {
  bool get isDryRunEnabled => const bool.fromEnvironment(
        'DRY_RUN',
      );

  Future<void> init() async {
    const dryRunEnabled = bool.fromEnvironment('DRY_RUN');
    log.debug('Initializing DryrunService: $dryRunEnabled');
    return;
  }

  Future<List<FwupdDevice>> getFakeDevices() async {
    const yamlPath = String.fromEnvironment('YAML_FILE_PATH');

    if (yamlPath.isEmpty) {
      log.debug('No YAML file path provided');
      return [];
    }

    final file = File(yamlPath);
    final YamlList doc = loadYaml(file.readAsStringSync());

    return [
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
    ];
  }
}
