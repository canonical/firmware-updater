import 'package:firmware_updater/device_model.dart';
import 'package:firmware_updater/device_page.dart';
import 'package:firmware_updater/device_store.dart';
import 'package:firmware_updater/fwupd_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import 'device_page_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([DeviceModel, DeviceStore])
void main() {
  DeviceModel mockModel({
    required FwupdDevice device,
    bool? hasUpgrade,
    List<FwupdRelease>? releases,
    FwupdException? error,
  }) {
    final model = MockDeviceModel();
    when(model.device).thenReturn(device);
    when(model.hasUpgrade()).thenReturn(hasUpgrade ?? false);
    when(model.releases).thenReturn(releases ?? []);
    return model;
  }

  DeviceStore mockStore() => MockDeviceStore();

  Widget buildPage({
    required DeviceModel model,
    required FwupdNotifier notifier,
    required DeviceStore store,
  }) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DeviceModel>.value(value: model),
        ChangeNotifierProvider<FwupdNotifier>.value(value: notifier),
        ChangeNotifierProvider<DeviceStore>.value(value: store),
      ],
      child: const DevicePage(),
    );
  }

  group('idle', () {
    testWidgets('no actions', (tester) async {
      final device = testDevice(id: 'a');
      final model = mockModel(device: device);
      final notifier = mockNotifier();
      final store = mockStore();
      await tester.pumpApp(
          (_) => buildPage(model: model, notifier: notifier, store: store));

      expect(find.text(tester.lang.showUpdates), findsNothing);
      expect(find.text(tester.lang.showReleases), findsNothing);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsNothing);
    });

    testWidgets('releases available', (tester) async {
      final device = testDevice(id: 'a');
      final releases = [FwupdRelease(name: 'test release')];
      final model = mockModel(device: device, releases: releases);
      final notifier = mockNotifier();
      final store = mockStore();
      await tester.pumpApp(
          (_) => buildPage(model: model, notifier: notifier, store: store));

      expect(find.text(tester.lang.showUpdates), findsNothing);
      expect(find.text(tester.lang.showReleases), findsOneWidget);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsNothing);

      await tester.tap(find.text(tester.lang.showReleases));
      verify(store.showReleases = true).called(1);
    });

    testWidgets('update available', (tester) async {
      final device = testDevice(
        id: 'a',
      );
      final releases = [FwupdRelease(name: 'test release')];
      final model =
          mockModel(device: device, hasUpgrade: true, releases: releases);
      final notifier = mockNotifier();
      final store = mockStore();
      await tester.pumpApp(
          (_) => buildPage(model: model, notifier: notifier, store: store));

      expect(find.text(tester.lang.showUpdates), findsOneWidget);
      expect(find.text(tester.lang.showReleases), findsNothing);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsNothing);

      await tester.tap(find.text(tester.lang.showUpdates));
      verify(store.showReleases = true).called(1);
    });

    testWidgets('update checksum', (tester) async {
      final device = testDevice(
          name: 'test device', id: 'a', flags: {FwupdDeviceFlag.canVerify});
      final model = mockModel(device: device);
      final notifier = mockNotifier();
      final store = mockStore();
      await tester.pumpApp(
          (_) => buildPage(model: model, notifier: notifier, store: store));

      expect(find.text(tester.lang.showUpdates), findsNothing);
      expect(find.text(tester.lang.showReleases), findsNothing);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsOneWidget);

      await tester.tap(find.text(tester.lang.updateChecksums));
      await tester.pumpAndSettle();

      expect(find.text(tester.lang.updateChecksumsConfirm(device.name)),
          findsOneWidget);
      expect(find.text(tester.lang.updateChecksumsInfo), findsOneWidget);
      expect(find.text(tester.lang.update), findsOneWidget);
      expect(find.text(tester.lang.cancel), findsOneWidget);

      await tester.tap(find.text(tester.lang.update));
      verify(model.verifyUpdate()).called(1);
    });

    testWidgets('verify checksum', (tester) async {
      final device = testDevice(
          id: 'a', flags: {FwupdDeviceFlag.canVerify}, checksum: '1337');
      final model = mockModel(device: device);
      final notifier = mockNotifier();
      final store = mockStore();
      await tester.pumpApp(
          (_) => buildPage(model: model, notifier: notifier, store: store));

      expect(find.text(tester.lang.showUpdates), findsNothing);
      expect(find.text(tester.lang.showReleases), findsNothing);
      expect(find.text(tester.lang.verifyFirmware), findsOneWidget);
      expect(find.text(tester.lang.updateChecksums), findsOneWidget);

      await tester.tap(find.text(tester.lang.verifyFirmware));
      await tester.pumpAndSettle();

      expect(find.text(tester.lang.verifyFirmwareConfirm(device.name)),
          findsOneWidget);
      expect(find.text(tester.lang.ok), findsOneWidget);
      expect(find.text(tester.lang.cancel), findsOneWidget);

      await tester.tap(find.text(tester.lang.ok));
      verify(model.verify()).called(1);
    });
  });
}
