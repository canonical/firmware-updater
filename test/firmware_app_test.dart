import 'package:firmware_updater/device_store.dart';
import 'package:firmware_updater/firmware_app.dart';
import 'package:firmware_updater/fwupd_notifier.dart';
import 'package:firmware_updater/fwupd_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'firmware_app_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([DeviceStore, FwupdNotifier])
void main() {
  DeviceStore mockStore({
    required List<FwupdDevice> devices,
  }) {
    final store = MockDeviceStore();
    when(store.devices).thenReturn(devices);
    return store;
  }

  FwupdNotifier mockNotifier({
    FwupdStatus? status,
    int? percentage,
    String? version,
  }) {
    final notifier = MockFwupdNotifier();
    when(notifier.status).thenReturn(status ?? FwupdStatus.idle);
    when(notifier.percentage).thenReturn(percentage ?? 0);
    when(notifier.version).thenReturn(version ?? 'v1.2.3');
    return notifier;
  }

  Widget buildPage(
      {required DeviceStore store, required FwupdNotifier notifier}) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DeviceStore>.value(value: store),
        ChangeNotifierProvider<FwupdNotifier>.value(value: notifier),
      ],
      child: const FirmwareApp(),
    );
  }

  testWidgets('loading', (tester) async {
    final store = mockStore(devices: []);
    await tester
        .pumpApp((_) => buildPage(store: store, notifier: mockNotifier()));

    expect(find.byType(YaruCircularProgressIndicator), findsOneWidget);
  });

  testWidgets('data', (tester) async {
    registerMockService<FwupdService>(mockService());

    final store = mockStore(devices: [
      testDevice(id: '1', name: 'Device 1', summary: 'Summary 1'),
      testDevice(id: '2', name: 'Device 2', summary: 'Summary 2'),
    ]);
    await tester
        .pumpApp((_) => buildPage(store: store, notifier: mockNotifier()));

    // First device appears twice in master detail layout
    expect(find.text('Device 1'), findsNWidgets(2));
    expect(find.text('Summary 1'), findsNWidgets(2));

    expect(find.text('Device 2'), findsOneWidget);
    expect(find.text('Summary 2'), findsOneWidget);
  });
}
