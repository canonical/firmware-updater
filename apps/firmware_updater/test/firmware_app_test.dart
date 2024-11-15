import 'package:firmware_updater/device_store.dart';
import 'package:firmware_updater/firmware_app.dart';
import 'package:firmware_updater/fwupd_l10n.dart';
import 'package:firmware_updater/fwupd_notifier.dart';
import 'package:firmware_updater/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:gtk/gtk.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';

import 'firmware_app_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([DeviceStore, GtkApplicationNotifier])
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
    when(store.showReleases).thenReturn(false);
    when(store.indexOf(any)).thenAnswer(
      (i) => devices.indexWhere(
        (d) => d.deviceId == i.positionalArguments.single as String?,
      ),
    );
    return store;
  }

  MockGtkApplicationNotifier mockGtkApplicationNotifier([List<String>? args]) {
    final notifier = MockGtkApplicationNotifier();
    when(notifier.commandLine).thenReturn(args ?? []);
    return notifier;
  }

  Widget buildPage({
    required DeviceStore store,
    required FwupdNotifier notifier,
  }) {
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
    registerMockService<FwupdDbusService>(mockService());
    registerMockService<GtkApplicationNotifier>(mockGtkApplicationNotifier());

    final store = mockStore(devices: []);
    await tester
        .pumpApp((_) => buildPage(store: store, notifier: mockNotifier()));

    expect(find.byType(YaruCircularProgressIndicator), findsOneWidget);
  });

  group('data', () {
    testWidgets('landscape layout', (tester) async {
      registerMockService<FwupdDbusService>(mockService());
      registerMockService<GtkApplicationNotifier>(mockGtkApplicationNotifier());

      final store = mockStore(devices: devices);
      await tester
          .pumpApp((_) => buildPage(store: store, notifier: mockNotifier()));
      await tester.pumpAndSettle();

      expect(find.text(devices.first.name), findsNWidgets(2));
      expect(find.text(devices.first.summary!), findsNWidgets(2));
      expectDevicePropertyList(tester);

      expect(find.text(devices[1].name), findsOneWidget);
      expect(find.text(devices[1].summary!), findsOneWidget);
    });

    testWidgets('portrait layout', (tester) async {
      registerMockService<FwupdDbusService>(mockService());
      registerMockService<GtkApplicationNotifier>(mockGtkApplicationNotifier());

      final store = mockStore(devices: devices);
      await tester.pumpApp(
        (_) => buildPage(store: store, notifier: mockNotifier()),
        size: const Size(400, 850),
      );
      await tester.pumpAndSettle();

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

    testWidgets('empty list', (tester) async {
      registerMockService<FwupdDbusService>(mockService());
      registerMockService<GtkApplicationNotifier>(mockGtkApplicationNotifier());

      final store = mockStore(devices: []);
      await tester
          .pumpApp((_) => buildPage(store: store, notifier: mockNotifier()));
      await tester.pumpAndSettle();

      expect(find.text(tester.lang.noDevicesFound), findsOneWidget);
    });
  });

  testWidgets('on battery', (tester) async {
    registerMockService<FwupdDbusService>(mockService());
    registerMockService<GtkApplicationNotifier>(mockGtkApplicationNotifier());

    final store = mockStore(devices: devices);
    await tester.pumpApp(
      (_) => buildPage(store: store, notifier: mockNotifier(onBattery: true)),
    );
    await tester.pumpAndSettle();

    expect(find.text(tester.lang.batteryWarning), findsOneWidget);
  });

  testWidgets('register callbacks', (tester) async {
    final service = mockService();
    registerMockService<FwupdDbusService>(service);
    registerMockService<GtkApplicationNotifier>(mockGtkApplicationNotifier());

    final notifier = mockNotifier();
    final store = mockStore(devices: devices);
    await tester.pumpApp((_) => buildPage(store: store, notifier: notifier));
    verify(notifier.registerConfirmationListener(any)).called(1);
    verify(notifier.registerErrorListener(any)).called(1);
  });

  testWidgets('dialogs', (tester) async {
    final deviceRequest = FwupdDevice(
      deviceId: 'a',
      name: 'Device A',
      plugin: '',
      updateMessage: 'foo',
      updateImage: 'http://example.com/image.png',
    );
    final service = mockService();
    final notifier = mockNotifier();
    registerMockService<FwupdDbusService>(service);
    registerMockService<GtkApplicationNotifier>(mockGtkApplicationNotifier());

    final store = mockStore(devices: devices);

    late final Future<bool> Function() confirmationListener;
    when(notifier.registerConfirmationListener(any)).thenAnswer(
      (i) => confirmationListener =
          i.positionalArguments[0] as Future<bool> Function(),
    );

    late final Function(Exception) errorListener;
    when(notifier.registerErrorListener(any)).thenAnswer(
      (i) => errorListener = i.positionalArguments[0] as Function(Exception),
    );

    late final Function(FwupdDevice) deviceRequestListener;
    when(notifier.registerDeviceRequestListener(any)).thenAnswer(
      (i) => deviceRequestListener =
          i.positionalArguments[0] as Function(FwupdDevice),
    );

    await tester.pumpApp((_) => buildPage(store: store, notifier: notifier));

    final result = confirmationListener();
    await tester.pumpAndSettle();
    expect(find.text(tester.lang.rebootConfirmMessage), findsOneWidget);
    expect(find.text(tester.lang.rebootNow), findsOneWidget);
    expect(find.text(tester.lang.rebootLater), findsOneWidget);

    await tester.tap(find.text(tester.lang.rebootNow));
    expect(await result, true);

    const exception = FwupdWriteException();
    errorListener(exception);
    await tester.pumpAndSettle();
    expect(find.text(tester.lang.installError), findsOneWidget);
    expect(find.text(tester.lang.close), findsOneWidget);
    expect(find.text(exception.localize(tester.context)), findsOneWidget);
    await tester.tap(find.text(tester.lang.close));

    deviceRequestListener(deviceRequest);
    await tester.pumpAndSettle();
    expect(find.text(tester.lang.close), findsOneWidget);
    expect(find.text(deviceRequest.updateMessage!), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('gtk app notifier', (tester) async {
    registerMockService<FwupdDbusService>(mockService());
    final gtkAppNotifier = mockGtkApplicationNotifier();
    registerMockService<GtkApplicationNotifier>(gtkAppNotifier);

    final store = mockStore(devices: []);
    when(store.indexOf(any)).thenReturn(0);
    late final void Function(List<String>) cliListener;
    when(gtkAppNotifier.addCommandLineListener(any)).thenAnswer(
      (i) => cliListener =
          i.positionalArguments.first as void Function(List<String>),
    );

    await tester
        .pumpApp((_) => buildPage(store: store, notifier: mockNotifier()));
    verify(gtkAppNotifier.addCommandLineListener(any)).called(1);

    cliListener(['foo']);
    verify(store.showReleases = true).called(1);
  });
}
