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

@GenerateMocks([DeviceStore])
void main() {
  final devices = [
    testDevice(
      id: '1',
      name: 'Device 1',
      summary: 'Summary 1',
      guid: [
        '123e4567-e89b-12d3-a456-426614174000',
        'a4f0aa5e-fdde-44d7-966c-40bd49385cc5',
      ],
      vendor: 'test vendor',
      version: '1.0.0',
      versionLowest: '0.0.1',
      flags: {FwupdDeviceFlag.updatable, FwupdDeviceFlag.needsReboot},
    ),
    testDevice(id: '2', name: 'Device 2', summary: 'Summary 2'),
  ];

  DeviceStore mockStore({
    required List<FwupdDevice> devices,
  }) {
    final store = MockDeviceStore();
    when(store.devices).thenReturn(devices);
    return store;
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

  void expectDevicePropertyList(WidgetTester tester) {
    expect(find.text(tester.lang.fwupdDeviceFlagNeedsReboot), findsOneWidget);
    expect(find.text(devices.first.guid[1]), findsOneWidget);
    expect(find.text(devices.first.vendor!), findsOneWidget);
    expect(find.text(devices.first.version!), findsOneWidget);
    expect(find.text(devices.first.versionLowest!), findsOneWidget);
  }

  testWidgets('loading', (tester) async {
    final store = mockStore(devices: []);
    await tester
        .pumpApp((_) => buildPage(store: store, notifier: mockNotifier()));

    expect(find.byType(YaruCircularProgressIndicator), findsOneWidget);
  });

  group('data', () {
    testWidgets('landscape layout', (tester) async {
      registerMockService<FwupdService>(mockService());

      final store = mockStore(devices: devices);
      await tester
          .pumpApp((_) => buildPage(store: store, notifier: mockNotifier()));

      expect(find.text(devices.first.name), findsNWidgets(2));
      expect(find.text(devices.first.summary!), findsNWidgets(2));
      expectDevicePropertyList(tester);

      expect(find.text(devices[1].name), findsOneWidget);
      expect(find.text(devices[1].summary!), findsOneWidget);
    });

    testWidgets('portrait layout', (tester) async {
      registerMockService<FwupdService>(mockService());

      final store = mockStore(devices: devices);
      await tester.pumpApp(
          (_) => buildPage(store: store, notifier: mockNotifier()),
          size: const Size(400, 850));

      expect(find.text(devices.first.name), findsOneWidget);
      expect(find.text(devices.first.summary!), findsOneWidget);
      expect(find.text(devices[1].name), findsOneWidget);
      expect(find.text(devices[1].summary!), findsOneWidget);
      expect(find.text(tester.lang.currentVersion), findsNothing);

      await tester.tap(find.text(devices.first.name));
      await tester.pumpAndSettle();

      expect(find.byType(YaruBackButton), findsOneWidget);
      expectDevicePropertyList(tester);
    });
  });

  testWidgets('on battery', (tester) async {
    registerMockService<FwupdService>(mockService());

    final store = mockStore(devices: devices);
    await tester.pumpApp((_) =>
        buildPage(store: store, notifier: mockNotifier(onBattery: true)));

    expect(find.text(tester.lang.batteryWarning), findsOneWidget);
  });
}
