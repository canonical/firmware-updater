import 'dart:io';

import 'package:firmware_updater/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FwupdMockService - No Devices', () {
    late FwupdMockService simulateService;
    late File file;

    setUp(() async {
      file = File('./test/tmp_test.yaml');
      file.writeAsStringSync('''
---
- checksum: null
  created: 2023-11-07 14:56:27.000Z
  deviceId: 08d460be0f1f9f128413f816022a6439e0078018
  flags: 
      - FwupdDeviceFlag.updatable
      - FwupdDeviceFlag.requireAc
      - FwupdDeviceFlag.supported
      - FwupdDeviceFlag.registered
      - FwupdDeviceFlag.canVerify
      - FwupdDeviceFlag.canVerifyImage
  guid: b585990a-003e-5270-89d5-3705a17f9a43
  icon: preferences-desktop-keyboard
  modified: null
  name: 'Integrated Webcam'
  parentDeviceId: null
  plugin: test
  protocol: com.acme.test
  summary: Fake webcam
  updateState: FwupdUpdateState.unknown
  vendor: ACME Corp.
  vendorId: USB:0x046D
  version: 1.2.2
  versionBootloader: 0.1.2
  versionFormat: FwupdVersionFormat.triplet
  versionLowest: 1.2.0

- checksum: null
  created: 2023-11-07 14:56:27.000Z
  deviceId: 08d460be0f1f9f128413f816022a6439e0078018
  flags: 
      - FwupdDeviceFlag.updatable
      - FwupdDeviceFlag.requireAc
      - FwupdDeviceFlag.supported
      - FwupdDeviceFlag.registered
      - FwupdDeviceFlag.canVerify
      - FwupdDeviceFlag.canVerifyImage
  guid: b585990a-003e-5270-89d5-3705a17f9a43
  icon: preferences-desktop-keyboard
  modified: null
  name: 'MuSuperDuperDevice'
  parentDeviceId: null
  plugin: test
  protocol: com.acme.test
  summary: A new fake device
  updateState: FwupdUpdateState.unknown
  vendor: ACME Corp.
  vendorId: USB:0x046D
  version: 1.2.2
  versionBootloader: 0.1.2
  versionFormat: FwupdVersionFormat.triplet
  versionLowest: 1.2.0''');
      simulateService = FwupdMockService(simulateYamlFilePath: file.path);
    });

    tearDown(() async {
      expect(await file.exists(), isTrue);
      await file.delete();
      await simulateService.dispose();
    });

    test('Should initialize without error', () async {
      expect(simulateService.init(), completes);
    });

    test('Should dispose without error', () async {
      expect(simulateService.dispose(), completes);
    });

    test('Should return empty device list by default', () async {
      final devices = await simulateService.getDevices();
      expect(devices, isNotEmpty);
      expect(devices.length, greaterThan(1));
    });

    test('getDowngrades', () async {
      final devices = await simulateService.getDevices();
      final releases = await simulateService.getDowngrades(devices.first);
      expect(releases, isEmpty);
    });

    test('getPlugins', () async {
      final devices = await simulateService.getPlugins();
      expect(devices, isEmpty);
    });

    test('getReleases', () async {
      final devices = await simulateService.getDevices();
      final releases = await simulateService.getReleases(devices.first);
      expect(releases, isEmpty);
    });

    test('getRemotes', () async {
      final devices = await simulateService.getRemotes();
      expect(devices, isEmpty);
    });

    test('getUpgrades', () async {
      final devices = await simulateService.getDevices();
      final releases = await simulateService.getUpgrades(devices.first);
      expect(releases, isEmpty);
    });

    test('reboot', () async {
      await simulateService.reboot();
    });

    test('refreshProperties', () async {
      await simulateService.refreshProperties();
    });

    test('unlock', () async {
      final devices = await simulateService.getDevices();
      await simulateService.unlock(devices.first);
    });

    test('verify', () async {
      final devices = await simulateService.getDevices();
      await simulateService.verify(devices.first);
    });

    test('verifyUpdate', () async {
      final devices = await simulateService.getDevices();
      await simulateService.verifyUpdate(devices.first);
    });
  });
}
