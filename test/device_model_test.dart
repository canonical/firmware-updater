import 'package:firmware_updater/device_model.dart';
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

  group('install releases', () {
    test('successful', () async {
      final device = testDevice(id: 'a');
      final release = FwupdRelease(name: '');

      final service = mockService();

      final deviceModel = DeviceModel(device, service);
      await deviceModel.install(release);
      verify(service.install(device, release)).called(1);
      expect(deviceModel.state, DeviceState.idle);
    });

    test('needs reboot', () async {
      final device = testDevice(id: 'a', flags: {FwupdDeviceFlag.needsReboot});
      final release = FwupdRelease(name: '');

      final service = mockService();

      final deviceModel = DeviceModel(device, service);
      await deviceModel.install(release);
      verify(service.install(device, release)).called(1);
      expect(deviceModel.state, DeviceState.needsReboot);
    });
    test('install error', () async {
      final device = testDevice(id: 'a');
      final release = FwupdRelease(name: '');

      final service = mockService();
      when(service.install(device, release))
          .thenThrow(const FwupdAuthFailedException());

      final deviceModel = DeviceModel(device, service);
      await deviceModel.install(release);
      verify(service.install(device, release)).called(1);
      expect(deviceModel.state, DeviceState.error);
      expect(deviceModel.error, const FwupdAuthFailedException());
    });
  });

  test('verify', () async {
    final device = testDevice(id: 'a');

    final service = mockService();

    final deviceModel = DeviceModel(device, service);
    await deviceModel.verify();
    verify(service.verify(device)).called(1);
  });
}
