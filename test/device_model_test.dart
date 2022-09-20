import 'package:firmware_updater/device_model.dart';
import 'package:firmware_updater/firmware_model.dart';
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

    final firmwareModel = FirmwareModel(service);
    await firmwareModel.init();

    final deviceModel = DeviceModel(firmwareModel, device);

    expect(deviceModel.releases, releases);
  });

  test('install release', () async {
    final device = testDevice(id: '');
    final release = FwupdRelease(name: '');

    final service = mockService();

    final firmwareModel = FirmwareModel(service);
    final deviceModel = DeviceModel(firmwareModel, device);
    await deviceModel.install(release);
    verify(service.install(device, release)).called(1);
  });

  test('verify', () async {
    final device = testDevice(id: '');

    final service = mockService();

    final firmwareModel = FirmwareModel(service);
    final deviceModel = DeviceModel(firmwareModel, device);
    await deviceModel.verify();
    verify(service.verify(device)).called(1);
  });
}
