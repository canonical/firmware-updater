import 'package:firmware_updater/app.dart';
import 'package:firmware_updater/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru/yaru.dart';

import 'test_utils.dart';

void main() {
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
      final recoveryKeyModel = mockRecoveryKeyModel();
      await tester.pumpApp(
        (_) => buildPage(
          model: model,
          notifier: notifier,
          store: store,
        ),
        providers: [
          Provider(create: (_) => recoveryKeyModel),
        ],
      );

      expect(find.text(tester.lang.updateToLatest), findsNothing);
      expect(find.text(tester.lang.allVersions), findsNothing);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsNothing);
    });

    testWidgets('releases available', (tester) async {
      final device = testDevice(id: 'a', version: '1.0.0');
      final releases = [FwupdRelease(name: 'test release', version: '1.0.0')];
      final model = mockModel(device: device, releases: releases);
      final notifier = mockNotifier();
      final store = mockStore();
      final recoveryKeyModel = mockRecoveryKeyModel();
      await tester.pumpApp(
        (_) => buildPage(
          model: model,
          notifier: notifier,
          store: store,
        ),
        providers: [
          Provider(create: (_) => recoveryKeyModel),
        ],
      );

      expect(find.text(tester.lang.updateToLatest), findsNothing);
      expect(find.text(tester.lang.allVersions), findsOneWidget);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsNothing);

      await tester.tap(find.text(tester.lang.allVersions));
      verify(store.showReleases = true).called(1);
    });

    testWidgets('update available', (tester) async {
      final device = testDevice(id: 'a', version: '1.0.0', name: 'test device');
      final releases = [
        FwupdRelease(
          name: 'new release',
          version: '2.0.0',
          flags: {FwupdReleaseFlag.isUpgrade},
        ),
        FwupdRelease(
          name: 'test release',
          version: '1.0.0',
        ),
      ];
      final model = mockModel(
        device: device,
        hasUpgrade: true,
        releases: releases,
      );
      final notifier = mockNotifier();
      final store = mockStore();
      final recoveryKeyModel = mockRecoveryKeyModel();
      await tester.pumpApp(
        (_) => buildPage(model: model, notifier: notifier, store: store),
        providers: [
          Provider(create: (_) => recoveryKeyModel),
        ],
      );

      expect(find.text(tester.lang.updateToLatest), findsOneWidget);
      expect(find.text(tester.lang.allVersions), findsOneWidget);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsNothing);

      await tester.tap(find.text(tester.lang.updateToLatest));
      await tester.pumpAndSettle();

      expect(
        find.html(tester.lang.updateConfirm('test device', '2.0.0')),
        findsOneWidget,
      );

      await tester.tap(find.text(tester.lang.update));
      verify(model.install(releases[0])).called(1);
    });

    group('update available affecting tpm fde', () {
      for (final testCase in [
        (
          name: 'Ubuntu FDE',
          hasUbuntuFde: true,
          hasBitlocker: false,
          expectTextField: true,
          expectCheckBox: false,
        ),
        (
          name: 'Bitlocker',
          hasUbuntuFde: false,
          hasBitlocker: true,
          expectTextField: false,
          expectCheckBox: true,
        ),
        (
          name: 'Other FDE',
          hasUbuntuFde: false,
          hasBitlocker: false,
          expectTextField: false,
          expectCheckBox: true,
        ),
      ]) {
        testWidgets(testCase.name, (tester) async {
          final device = testDevice(
            id: 'a',
            version: '1.0.0',
            name: 'test device',
            flags: {FwupdDeviceFlag.affectsFde},
          );
          final releases = [
            FwupdRelease(
              name: 'new release',
              version: '2.0.0',
              flags: {FwupdReleaseFlag.isUpgrade},
            ),
            FwupdRelease(
              name: 'test release',
              version: '1.0.0',
            ),
          ];
          final model = mockModel(
            device: device,
            hasUpgrade: true,
            releases: releases,
          );
          final notifier = mockNotifier();
          final store = mockStore();
          final recoveryKeyModel = mockRecoveryKeyModel(
            hasUbuntuFde: testCase.hasUbuntuFde,
            hasBitlocker: testCase.hasBitlocker,
          );
          await tester.pumpApp(
            (_) => buildPage(model: model, notifier: notifier, store: store),
            providers: [
              Provider(create: (_) => recoveryKeyModel),
            ],
          );

          expect(find.text(tester.lang.updateToLatest), findsOneWidget);
          expect(find.text(tester.lang.allVersions), findsOneWidget);
          expect(find.text(tester.lang.verifyFirmware), findsNothing);
          expect(find.text(tester.lang.updateChecksums), findsNothing);

          await tester.tap(find.text(tester.lang.updateToLatest));
          await tester.pumpAndSettle();

          expect(
            find.html(tester.lang.updateConfirm('test device', '2.0.0')),
            findsOneWidget,
          );

          if (testCase.expectTextField) {
            final textField = find.byType(TextField);
            await tester.enterText(textField, 'recovery key');
            await tester.tap(find.text(tester.lang.update));
            verify(recoveryKeyModel.checkRecoveryKey('recovery key')).called(1);
            verify(model.install(releases[0])).called(1);
          } else if (testCase.expectCheckBox) {
            expect(
              tester
                  .widget<ElevatedButton>(
                    find.widgetWithText(ElevatedButton, tester.lang.update),
                  )
                  .enabled,
              isFalse,
            );

            final checkbox = find.byType(YaruCheckbox);
            expect(checkbox, findsOneWidget);

            await tester.tap(checkbox);
            await tester.pumpAndSettle();

            expect(
              tester
                  .widget<ElevatedButton>(
                    find.widgetWithText(ElevatedButton, tester.lang.update),
                  )
                  .enabled,
              isTrue,
            );

            await tester.tap(find.text(tester.lang.update));
            verify(model.install(releases[0])).called(1);
          }
        });
      }
    });

    testWidgets('update checksum', (tester) async {
      final device = testDevice(
        name: 'test device',
        id: 'a',
        flags: {FwupdDeviceFlag.canVerify},
      );
      final model = mockModel(device: device);
      final notifier = mockNotifier();
      final store = mockStore();
      final recoveryKeyModel = mockRecoveryKeyModel();
      await tester.pumpApp(
        (_) => buildPage(model: model, notifier: notifier, store: store),
        providers: [
          Provider(create: (_) => recoveryKeyModel),
        ],
      );

      expect(find.text(tester.lang.updateToLatest), findsNothing);
      expect(find.text(tester.lang.allVersions), findsNothing);
      expect(find.text(tester.lang.verifyFirmware), findsNothing);
      expect(find.text(tester.lang.updateChecksums), findsOneWidget);

      await tester.tap(find.text(tester.lang.updateChecksums));
      await tester.pumpAndSettle();

      expect(
        find.html(tester.lang.updateChecksumsConfirm(device.name)),
        findsOneWidget,
      );
      expect(find.text(tester.lang.updateChecksumsInfo), findsOneWidget);
      expect(find.text(tester.lang.update), findsOneWidget);
      expect(find.text(tester.lang.cancel), findsOneWidget);

      await tester.tap(find.text(tester.lang.update));
      verify(model.verifyUpdate()).called(1);
    });

    testWidgets('verify checksum', (tester) async {
      final device = testDevice(
        id: 'a',
        flags: {FwupdDeviceFlag.canVerify},
        checksum: '1337',
      );
      final model = mockModel(device: device);
      final notifier = mockNotifier();
      final store = mockStore();
      final recoveryKeyModel = mockRecoveryKeyModel();
      await tester.pumpApp(
        (_) => buildPage(model: model, notifier: notifier, store: store),
        providers: [
          Provider(create: (_) => recoveryKeyModel),
        ],
      );

      expect(find.text(tester.lang.updateToLatest), findsNothing);
      expect(find.text(tester.lang.allVersions), findsNothing);
      expect(find.text(tester.lang.verifyFirmware), findsOneWidget);
      expect(find.text(tester.lang.updateChecksums), findsOneWidget);

      await tester.tap(find.text(tester.lang.verifyFirmware));
      await tester.pumpAndSettle();

      expect(
        find.text(tester.lang.verifyFirmwareConfirm(device.name)),
        findsOneWidget,
      );
      expect(find.text(tester.lang.ok), findsOneWidget);
      expect(find.text(tester.lang.cancel), findsOneWidget);

      await tester.tap(find.text(tester.lang.ok));
      verify(model.verify()).called(1);
    });
  });
}
