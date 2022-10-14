import 'package:firmware_updater/device_model.dart';
import 'package:firmware_updater/device_page.dart';
import 'package:firmware_updater/fwupd_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import 'device_page_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([DeviceModel])
void main() {
  DeviceModel mockModel({
    required FwupdDevice device,
    bool? hasUpgrade,
    List<FwupdRelease>? releases,
    DeviceState? state,
    FwupdException? error,
  }) {
    final model = MockDeviceModel();
    when(model.device).thenReturn(device);
    when(model.hasUpgrade()).thenReturn(hasUpgrade ?? false);
    when(model.releases).thenReturn(releases ?? []);
    when(model.state).thenReturn(state ?? DeviceState.idle);
    when(model.error).thenReturn(error);
    return model;
  }

  Widget buildPage({
    required DeviceModel model,
    required FwupdNotifier notifier,
  }) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DeviceModel>.value(value: model),
        ChangeNotifierProvider<FwupdNotifier>.value(value: notifier)
      ],
      child: const DevicePage(),
    );
  }

  group('idle', () {
    testWidgets('no actions', (tester) async {
      final device = testDevice(id: 'a');
      final model = mockModel(device: device);
      final notifier = mockNotifier();
      await tester.pumpApp((_) => buildPage(model: model, notifier: notifier));

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
      await tester.pumpApp((_) => buildPage(model: model, notifier: notifier));

      expect(find.text(tester.lang.showUpdates), findsNothing);
      expect(find.text(tester.lang.showReleases), findsOneWidget);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsNothing);

      await tester.tap(find.text(tester.lang.showReleases));
      verify(model.selectedRelease = releases.first).called(1);
    });

    testWidgets('update available', (tester) async {
      final device = testDevice(
        id: 'a',
      );
      final releases = [FwupdRelease(name: 'test release')];
      final model =
          mockModel(device: device, hasUpgrade: true, releases: releases);
      final notifier = mockNotifier();
      await tester.pumpApp((_) => buildPage(model: model, notifier: notifier));

      expect(find.text(tester.lang.showUpdates), findsOneWidget);
      expect(find.text(tester.lang.showReleases), findsNothing);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsNothing);

      await tester.tap(find.text(tester.lang.showUpdates));
      verify(model.selectedRelease = releases.first).called(1);
    });

    testWidgets('update checksum', (tester) async {
      final device = testDevice(
          name: 'test device', id: 'a', flags: {FwupdDeviceFlag.canVerify});
      final model = mockModel(device: device);
      final notifier = mockNotifier();
      await tester.pumpApp((_) => buildPage(model: model, notifier: notifier));

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
      await tester.pumpApp((_) => buildPage(model: model, notifier: notifier));

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

  group('needs reboot', () {
    testWidgets('do reboot', (tester) async {
      final device = testDevice(id: 'a');
      final model = mockModel(device: device, state: DeviceState.needsReboot);
      final notifier = mockNotifier();
      await tester.pumpApp((_) => buildPage(model: model, notifier: notifier));
      await tester.pumpAndSettle();

      expect(find.text(tester.lang.rebootConfirm), findsOneWidget);
      expect(find.text(tester.lang.reboot), findsOneWidget);
      expect(find.text(tester.lang.cancel), findsOneWidget);

      await tester.tap(find.text(tester.lang.reboot));
      verify(model.reboot()).called(1);
    });

    testWidgets('cancel reboot', (tester) async {
      final device = testDevice(id: 'a');
      final model = mockModel(device: device, state: DeviceState.needsReboot);
      final notifier = mockNotifier();
      await tester.pumpApp((_) => buildPage(model: model, notifier: notifier));
      await tester.pumpAndSettle();

      expect(find.text(tester.lang.rebootConfirm), findsOneWidget);
      expect(find.text(tester.lang.reboot), findsOneWidget);
      expect(find.text(tester.lang.cancel), findsOneWidget);

      await tester.tap(find.text(tester.lang.cancel));
      verify(model.state = DeviceState.idle).called(1);
      verifyNever(model.reboot());
    });
  });

  testWidgets('error', (tester) async {
    final device = testDevice(id: 'a');
    const error = FwupdWriteException();
    final model =
        mockModel(device: device, state: DeviceState.error, error: error);
    final notifier = mockNotifier();
    await tester.pumpApp((_) => buildPage(model: model, notifier: notifier));
    await tester.pumpAndSettle();

    expect(find.text(tester.lang.installError), findsOneWidget);
    expect(find.text(tester.lang.close), findsOneWidget);

    await tester.tap(find.text(tester.lang.close));
    verify(model.state = DeviceState.idle).called(1);
  });
}
