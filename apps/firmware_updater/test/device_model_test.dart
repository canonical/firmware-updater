import 'package:firmware_updater/pages.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';

import 'test_utils.dart';

void main() {
  test('fetches releases', () async {
    final device = testDevice(id: 'a');

    final releases = [
      FwupdRelease(version: '1', name: ''),
      FwupdRelease(version: '2', name: ''),
    ];

    final service = mockService(devices: [device], releases: {'a': releases});

    final deviceModel = DeviceModel(device, service);
    await deviceModel.init();

    expect(deviceModel.releases, releases);
  });

  test('install', () async {
    final device = testDevice(id: 'a');
    final release = FwupdRelease(name: '');

    final service = mockService();

    final deviceModel = DeviceModel(device, service);
    await deviceModel.install(release);
    verify(service.install(device, release)).called(1);
  });

  test('verify', () async {
    final device = testDevice(id: 'a');

    final service = mockService();

    final deviceModel = DeviceModel(device, service);
    await deviceModel.verify();
    verify(service.verify(device)).called(1);
  });

  test('verifyUpdate', () async {
    final device = testDevice(id: 'a');

    final service = mockService();

    final deviceModel = DeviceModel(device, service);
    await deviceModel.verifyUpdate();
    verify(service.verifyUpdate(device)).called(1);
  });

  test('onBattery', () async {
    final device = testDevice(id: 'a');

    final service = mockService();
    when(service.onBattery).thenReturn(true);

    final deviceModel = DeviceModel(device, service);
    expect(deviceModel.onBattery, true);
  });
}
