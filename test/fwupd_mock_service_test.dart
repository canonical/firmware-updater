import 'package:firmware_updater/fwupd_mock_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';

import 'test_utils.dart';

void main() {
  final fakeDevicesList = [
    testDevice(
      id: '1',
      name: 'Device 1',
      summary: 'Summary 1',
      guid: [
        '123e4567-e89b-12d3-a456-426614174000',
        'a4f0aa5e-fdde-44d7-966c-40bd49385cc5',
      ],
      vendor: 'test vendor',
      version: '1.0.0',
      versionLowest: '0.0.1',
      flags: {FwupdDeviceFlag.updatable, FwupdDeviceFlag.needsReboot},
    ),
    testDevice(id: '2', name: 'Device 2', summary: 'Summary 2'),
  ];

  group('FwupdMockService', () {
    late FwupdMockService simulateService;

    setUp(() {
      simulateService = FwupdMockService();
    });

    test('Should initialize without error', () async {
      expect(simulateService.init(), completes);
    });

    test('Should dispose without error', () async {
      expect(simulateService.dispose(), completes);
    });

    test('Should return empty device list by default', () async {
      final devices = await simulateService.getDevices();
      expect(devices, isEmpty);
    });

    test('getDowngrades', () async {
      final devices =
          await simulateService.getDowngrades(fakeDevicesList.first);
      expect(devices, isEmpty);
    });

    test('getPlugins', () async {
      final devices = await simulateService.getPlugins();
      expect(devices, isEmpty);
    });

    test('getReleases', () async {
      final devices = await simulateService.getReleases(fakeDevicesList.first);
      expect(devices, isEmpty);
    });

    test('getRemotes', () async {
      final devices = await simulateService.getRemotes();
      expect(devices, isEmpty);
    });

    test('getUpgrades', () async {
      final devices = await simulateService.getUpgrades(fakeDevicesList.first);
      expect(devices, isEmpty);
    });

    test('reboot', () async {
      await simulateService.reboot();
    });

    test('refreshProperties', () async {
      await simulateService.refreshProperties();
    });

    test('unlock', () async {
      await simulateService.unlock(fakeDevicesList.first);
    });

    test('verify', () async {
      await simulateService.verify(fakeDevicesList.first);
    });

    test('verifyUpdate', () async {
      await simulateService.verifyUpdate(fakeDevicesList.first);
    });
  });
}
