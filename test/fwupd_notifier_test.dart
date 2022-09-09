import 'dart:async';

import 'package:firmware_updater/fwupd_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';

import 'test_utils.dart';

void main() {
  test('daemon properties', () async {
    final service = mockService();
    final notifier = FwupdNotifier(service);

    when(service.status).thenReturn(FwupdStatus.idle);
    expect(notifier.status, FwupdStatus.idle);

    when(service.status).thenReturn(FwupdStatus.loading);
    expect(notifier.status, FwupdStatus.loading);

    when(service.percentage).thenReturn(75);
    expect(notifier.percentage, 75);

    when(service.daemonVersion).thenReturn('foo');
    expect(notifier.version, 'foo');
  });

  test('notifies property changes', () async {
    final service = mockService();
    when(service.status).thenReturn(FwupdStatus.loading);
    when(service.percentage).thenReturn(75);

    final notifier = FwupdNotifier(service);
    expect(notifier.status, FwupdStatus.loading);

    final propertiesChanged = StreamController<List<String>>(sync: true);
    when(service.propertiesChanged).thenAnswer((_) => propertiesChanged.stream);

    await notifier.init();

    var wasNotified = 0;
    notifier.addListener(() => wasNotified++);

    propertiesChanged.add(['Status']);
    expect(wasNotified, 1);

    propertiesChanged.add(['Unknown']);
    expect(wasNotified, 1);

    propertiesChanged.add(['Percentage']);
    expect(wasNotified, 2);
  });

  test('monitors updatable devices', () async {
    final deviceAdded = StreamController<FwupdDevice>.broadcast(sync: true);
    final deviceChanged = StreamController<FwupdDevice>.broadcast(sync: true);
    final deviceRemoved = StreamController<FwupdDevice>.broadcast(sync: true);

    final service = mockService();
    when(service.deviceAdded).thenAnswer((_) => deviceAdded.stream);
    when(service.deviceChanged).thenAnswer((_) => deviceChanged.stream);
    when(service.deviceRemoved).thenAnswer((_) => deviceRemoved.stream);

    final monitor = FwupdNotifier(service);
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

    var wasNotified = 0;
    var expectedNotified = 0;
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
    final propertiesChanged = StreamController<List<String>>();

    final service = mockService();
    when(service.deviceAdded).thenAnswer((_) => deviceAdded.stream);
    when(service.deviceChanged).thenAnswer((_) => deviceChanged.stream);
    when(service.deviceRemoved).thenAnswer((_) => deviceRemoved.stream);
    when(service.propertiesChanged).thenAnswer((_) => propertiesChanged.stream);

    final notifier = FwupdNotifier(service);
    await notifier.init();

    expect(deviceAdded.hasListener, isTrue);
    expect(deviceChanged.hasListener, isTrue);
    expect(deviceRemoved.hasListener, isTrue);
    expect(propertiesChanged.hasListener, isTrue);

    await notifier.dispose();

    expect(deviceAdded.hasListener, isFalse);
    expect(deviceChanged.hasListener, isFalse);
    expect(deviceRemoved.hasListener, isFalse);
    expect(propertiesChanged.hasListener, isFalse);
  });
}
