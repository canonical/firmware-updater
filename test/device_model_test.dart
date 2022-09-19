import 'package:firmware_updater/device_model.dart';
import 'package:firmware_updater/device_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';

import 'test_utils.dart';

void main() {
  test('initializes service', () async {
    final service = mockService();
    final device = testDevice(id: '');

    final model = DeviceModel(service, device);
    await model.init();

    verify(service.init()).called(1);
  });

  test('fetches releases', () async {
    final devices = [
      testDevice(id: 'a'),
      testDevice(id: 'b'),
      testDevice(id: 'c'),
    ];

    final releases = {
      'a': [
        FwupdRelease(version: '1', name: ''),
        FwupdRelease(version: '2', name: ''),
      ],
      'c': [
        FwupdRelease(version: '3', name: ''),
      ]
    };

    final service = mockService(devices: devices, releases: releases);
    final device = devices.first;
    final deviceReleases = releases['a']!;

    final model = DeviceModel(service, device);
    await model.init();

    expect(
        model.state,
        DeviceState.data(
          device: device,
          releases: deviceReleases,
        ));
  });

  test('install release', () async {
    final device = testDevice(id: '');
    final release = FwupdRelease(name: '');

    final service = mockService();

    final model = DeviceModel(service, device);
    await model.install(release);
    verify(service.install(device, release)).called(1);
  });

  test('installation failure', () async {
    final device = testDevice(id: '');
    final release = FwupdRelease(name: '');

    final service = mockService();
    when(service.install(device, release))
        .thenThrow(const FwupdInvalidFileException());

    final model = DeviceModel(service, device);
    await model.install(release);
    expect(model.state, isA<DeviceErrorState>());
  });

  test('nothing to do', () async {
    final device = testDevice(id: '');

    final service = mockService(devices: [device]);
    when(service.getReleases(any)).thenThrow(const FwupdNothingToDoException());

    final model = DeviceModel(service, device);
    await model.init();
    expect(model.state, isA<DeviceState>());
  });

  test('verify', () async {
    final device = testDevice(id: '');

    final service = mockService();

    final model = DeviceModel(service, device);
    await model.verify();
    verify(service.verify(device)).called(1);
  });
}
