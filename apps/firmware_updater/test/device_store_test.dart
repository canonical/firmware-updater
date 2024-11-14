// ignore_for_file: close_sinks

import 'dart:async';

import 'package:firmware_updater/device_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';

import 'test_utils.dart';

void main() {
  test('monitors updatable devices', () async {
    final deviceAdded = StreamController<FwupdDevice>.broadcast(sync: true);
    final deviceRemoved = StreamController<FwupdDevice>.broadcast(sync: true);

    final service = mockService();
    when(service.deviceAdded).thenAnswer((_) => deviceAdded.stream);
    when(service.deviceRemoved).thenAnswer((_) => deviceRemoved.stream);

    final store = DeviceStore(service);
    await store.init();
    expect(store.devices, isEmpty);
    verify(service.getDevices()).called(1);

    final dev1 = FwupdDevice(
      deviceId: '1',
      name: '',
      plugin: '',
      flags: const {FwupdDeviceFlag.updatable},
    );
    final dev2 = FwupdDevice(
      deviceId: '2',
      name: '',
      plugin: '',
      flags: const {FwupdDeviceFlag.updatableHidden},
    );
    final dev3 = FwupdDevice(
      deviceId: '3',
      name: '',
      plugin: '',
    );

    var wasNotified = 0;
    var expectedNotified = 0;
    store.addListener(() => ++wasNotified);

    when(service.getDevices()).thenAnswer((_) async => [dev1]);
    deviceAdded.add(dev1);
    await untilCalled(service.getDevices());
    expect(store.devices, [dev1]);
    expect(wasNotified, ++expectedNotified);

    when(service.getDevices()).thenAnswer((_) async => [dev1, dev2]);
    deviceAdded.add(dev2);
    await untilCalled(service.getDevices());
    expect(store.devices, [dev1, dev2]);
    expect(wasNotified, ++expectedNotified);

    when(service.getDevices()).thenAnswer((_) async => [dev1, dev2, dev3]);
    deviceAdded.add(dev3);
    await untilCalled(service.getDevices());
    expect(store.devices, [dev1, dev2]);
    expect(wasNotified, expectedNotified);

    when(service.getDevices()).thenAnswer((_) async => [dev1]);
    deviceRemoved.add(dev2);
    await untilCalled(service.getDevices());
    expect(store.devices, [dev1]);
    expect(wasNotified, ++expectedNotified);
  });

  test('cancels subscriptions', () async {
    final deviceAdded = StreamController<FwupdDevice>();
    final deviceRemoved = StreamController<FwupdDevice>();

    final service = mockService();
    when(service.deviceAdded).thenAnswer((_) => deviceAdded.stream);
    when(service.deviceRemoved).thenAnswer((_) => deviceRemoved.stream);

    final store = DeviceStore(service);
    await store.init();

    expect(deviceAdded.hasListener, isTrue);
    expect(deviceRemoved.hasListener, isTrue);

    await store.dispose();

    expect(deviceAdded.hasListener, isFalse);
    expect(deviceRemoved.hasListener, isFalse);
  });

  test('properties', () async {
    final service = mockService();

    final store = DeviceStore(service);
    await store.init();

    var updates = 0;
    store.addListener(() => updates++);
    store.showReleases = true;
    expect(store.showReleases, true);
    expect(updates, 1);
  });

  test('helper methods', () async {
    final devices = [
      testDevice(id: 'a'),
      testDevice(id: 'b'),
    ];
    final service = mockService(devices: devices);
    final store = DeviceStore(service);
    await store.init();

    final index = store.indexOf(devices[1].deviceId);
    expect(index, 1);
  });

  test('no detected devices', () async {
    final service = mockService();
    final store = DeviceStore(service);
    await store.init();

    expect(store.devices, isEmpty);
  });
}
