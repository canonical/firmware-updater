import 'dart:async';

import 'package:firmware_updater/device_monitor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';

import 'test_utils.mocks.dart';

void main() {
  test('monitors updatable devices', () async {
    final deviceAdded = StreamController<FwupdDevice>.broadcast(sync: true);
    final deviceChanged = StreamController<FwupdDevice>.broadcast(sync: true);
    final deviceRemoved = StreamController<FwupdDevice>.broadcast(sync: true);

    final service = MockFwupdService();
    when(service.getDevices()).thenAnswer((_) async => []);
    when(service.deviceAdded).thenAnswer((_) => deviceAdded.stream);
    when(service.deviceChanged).thenAnswer((_) => deviceChanged.stream);
    when(service.deviceRemoved).thenAnswer((_) => deviceRemoved.stream);

    final monitor = DeviceMonitor(service);
    await monitor.init();
    expect(monitor.devices, isEmpty);
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
    final dev2b = FwupdDevice(
      deviceId: '2',
      name: 'b',
      plugin: '',
      flags: const {FwupdDeviceFlag.updatableHidden},
    );
    final dev3 = FwupdDevice(
      deviceId: '2',
      name: '',
      plugin: '',
    );

    int wasNotified = 0;
    int expectedNotified = 0;
    monitor.addListener(() => ++wasNotified);

    when(service.getDevices()).thenAnswer((_) async => [dev1]);
    deviceAdded.add(dev1);
    await untilCalled(service.getDevices());
    expect(monitor.devices, [dev1]);
    expect(wasNotified, ++expectedNotified);

    when(service.getDevices()).thenAnswer((_) async => [dev1, dev2]);
    deviceAdded.add(dev2);
    await untilCalled(service.getDevices());
    expect(monitor.devices, [dev1, dev2]);
    expect(wasNotified, ++expectedNotified);

    when(service.getDevices()).thenAnswer((_) async => [dev1, dev2, dev3]);
    deviceAdded.add(dev3);
    await untilCalled(service.getDevices());
    expect(monitor.devices, [dev1, dev2]);
    expect(wasNotified, expectedNotified);

    when(service.getDevices()).thenAnswer((_) async => [dev1, dev2b]);
    deviceChanged.add(dev2b);
    await untilCalled(service.getDevices());
    expect(monitor.devices, [dev1, dev2b]);
    expect(wasNotified, ++expectedNotified);

    when(service.getDevices()).thenAnswer((_) async => [dev1]);
    deviceRemoved.add(dev2);
    await untilCalled(service.getDevices());
    expect(monitor.devices, [dev1]);
    expect(wasNotified, ++expectedNotified);
  });

  test('cancels subscriptions', () async {
    final deviceAdded = StreamController<FwupdDevice>();
    final deviceChanged = StreamController<FwupdDevice>();
    final deviceRemoved = StreamController<FwupdDevice>();

    final service = MockFwupdService();
    when(service.getDevices()).thenAnswer((_) async => []);
    when(service.deviceAdded).thenAnswer((_) => deviceAdded.stream);
    when(service.deviceChanged).thenAnswer((_) => deviceChanged.stream);
    when(service.deviceRemoved).thenAnswer((_) => deviceRemoved.stream);

    final monitor = DeviceMonitor(service);
    await monitor.init();

    expect(deviceAdded.hasListener, isTrue);
    expect(deviceChanged.hasListener, isTrue);
    expect(deviceRemoved.hasListener, isTrue);

    await monitor.dispose();

    expect(deviceAdded.hasListener, isFalse);
    expect(deviceChanged.hasListener, isFalse);
    expect(deviceRemoved.hasListener, isFalse);
  });
}
