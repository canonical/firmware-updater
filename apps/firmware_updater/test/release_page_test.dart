import 'package:firmware_updater/app.dart';
import 'package:firmware_updater/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';

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
      child: const ReleasePage(),
    );
  }

  testWidgets('dropdown', (tester) async {
    final device = testDevice(id: 'a', version: '2');
    final model = mockModel(
      device: device,
      releases: [
        FwupdRelease(
          name: 'new release',
          flags: const {FwupdReleaseFlag.isUpgrade},
          version: '3.0.0',
        ),
        FwupdRelease(
          name: 'current release',
          flags: const {FwupdReleaseFlag.isUpgrade},
          version: '2.0.0',
        ),
        FwupdRelease(
          name: 'old release',
          flags: const {FwupdReleaseFlag.isDowngrade},
          version: '1.0.0',
        ),
      ],
    );
    final notifier = mockNotifier();
    final store = mockStore();
    await tester.pumpApp(
      (_) => buildPage(model: model, notifier: notifier, store: store),
    );

    expect(find.text('3.0.0').hitTestable(), findsOneWidget);
    expect(find.text('2.0.0').hitTestable(), findsOneWidget);
    expect(find.text('1.0.0').hitTestable(), findsNothing);

    final olderVersions = find.text(tester.lang.olderVersions);
    expect(olderVersions, findsOneWidget);

    await tester.tap(olderVersions);
    await tester.pumpAndSettle();

    expect(find.text('3.0.0').hitTestable(), findsOneWidget);
    expect(find.text('2.0.0').hitTestable(), findsOneWidget);
    expect(find.text('1.0.0').hitTestable(), findsOneWidget);
  });
}
