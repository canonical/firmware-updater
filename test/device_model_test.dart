import 'package:firmware_updater/device_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';

import 'test_utils.dart';

void main() {
  test('initializes service', () async {
    final device = testDevice(id: 'a');

    final service = mockService();

    final model = DeviceModel(device, service);
    await model.init();

    verify(service.init()).called(1);
  });

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

  test('install release', () async {
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
}
