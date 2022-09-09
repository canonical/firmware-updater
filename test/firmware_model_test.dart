import 'package:firmware_updater/firmware_model.dart';
import 'package:firmware_updater/firmware_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';

import 'test_utils.dart';

void main() {
  test('initializes service', () async {
    final service = mockService();

    final model = FirmwareModel(service);
    await model.init();

    verify(service.init()).called(1);
  });

  test('fetches devices and releases', () async {
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

    final model = FirmwareModel(service);
    await model.init();

    expect(
        model.state, FirmwareState.data(devices: devices, releases: releases));
  });

  test('refresh devices', () async {
    final service = mockService();

    final model = FirmwareModel(service);
    await model.refresh();

    verify(service.getDevices()).called(1);
  });

  test('install release', () async {
    final device = testDevice(id: '');
    final release = FwupdRelease(name: '');

    final service = mockService();

    final model = FirmwareModel(service);
    await model.install(device, release);
    verify(service.install(device, release)).called(1);
  });

  test('installation failure', () async {
    final device = testDevice(id: '');
    final release = FwupdRelease(name: '');

    final service = mockService();
    when(service.install(device, release))
        .thenThrow(const FwupdInvalidFileException());

    final model = FirmwareModel(service);
    await model.install(device, release);
    expect(model.state, isA<FirmwareErrorState>());
  });

  test('nothing to do', () async {
    final device = testDevice(id: 'foo');

    final service = mockService(devices: [device]);
    when(service.getReleases(any)).thenThrow(const FwupdNothingToDoException());

    final model = FirmwareModel(service);
    await model.init();
    expect(model.state, isA<FirmwareState>());
  });

  test('verify', () async {
    final device = testDevice(id: '');

    final service = mockService();

    final model = FirmwareModel(service);
    await model.verify(device);
    verify(service.verify(device)).called(1);
  });
}
