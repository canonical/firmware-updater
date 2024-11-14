// ignore_for_file: close_sinks

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

    when(service.onBattery).thenReturn(true);
    expect(notifier.onBattery, true);
  });

  test('notifies property changes', () async {
    final service = mockService();
    when(service.status).thenReturn(FwupdStatus.loading);
    when(service.percentage).thenReturn(75);
    when(service.onBattery).thenReturn(true);

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

    propertiesChanged.add(['OnBattery']);
    expect(wasNotified, 3);
  });

  test('cancels subscriptions', () async {
    final propertiesChanged = StreamController<List<String>>();
    final deviceRequest = StreamController<FwupdDevice>();

    final service = mockService();
    when(service.propertiesChanged).thenAnswer((_) => propertiesChanged.stream);
    when(service.deviceRequest).thenAnswer((_) => deviceRequest.stream);

    final notifier = FwupdNotifier(service);
    await notifier.init();
    notifier.registerDeviceRequestListener((_) {});

    expect(propertiesChanged.hasListener, isTrue);
    expect(deviceRequest.hasListener, isTrue);

    await notifier.dispose();

    expect(propertiesChanged.hasListener, isFalse);
    expect(deviceRequest.hasListener, isFalse);
  });

  test('daemon methods', () async {
    final service = mockService();
    final notifier = FwupdNotifier(service);

    await notifier.init();

    await notifier.refresh();
    verify(service.refreshProperties()).called(1);

    Future<bool> confirmationListener() async => false;
    notifier.registerConfirmationListener(confirmationListener);
    verify(service.registerConfirmationListener(confirmationListener))
        .called(1);

    void errorListener(Exception e) {}
    notifier.registerErrorListener(errorListener);
    verify(service.registerErrorListener(errorListener)).called(1);

    await notifier.dispose();
  });
}
