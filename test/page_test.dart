import 'package:firmware_updater/daemon.dart';
import 'package:firmware_updater/model.dart';
import 'package:firmware_updater/page.dart';
import 'package:firmware_updater/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import 'page_test.mocks.dart';
import 'test_utils.dart';

@GenerateMocks([FwupdDaemon, FwupdModel])
void main() {
  FwupdModel mockModel({
    required FwupdState state,
  }) {
    final model = MockFwupdModel();
    when(model.state).thenReturn(state);
    return model;
  }

  FwupdDaemon mockDaemon({
    FwupdStatus? status,
    int? percentage,
    String? version,
  }) {
    final daemon = MockFwupdDaemon();
    when(daemon.status).thenReturn(status ?? FwupdStatus.idle);
    when(daemon.percentage).thenReturn(percentage ?? 0);
    when(daemon.version).thenReturn(version ?? 'v1.2.3');
    return daemon;
  }

  Widget buildPage({required FwupdModel model, required FwupdDaemon daemon}) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FwupdModel>.value(value: model),
        ChangeNotifierProvider<FwupdDaemon>.value(value: daemon),
      ],
      child: const FwupdPage(),
    );
  }

  testWidgets('loading', (tester) async {
    final model = mockModel(state: const FwupdState.loading());
    await tester.pumpApp((_) => buildPage(model: model, daemon: mockDaemon()));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('data', (tester) async {
    final model = mockModel(
      state: FwupdState.data(devices: [
        testDevice(id: '1', name: 'Device 1', summary: 'Summary 1'),
        testDevice(id: '2', name: 'Device 2', summary: 'Summary 2'),
      ], releases: {}),
    );
    await tester.pumpApp((_) => buildPage(model: model, daemon: mockDaemon()));

    expect(find.text('Device 1'), findsOneWidget);
    expect(find.text('Summary 1'), findsOneWidget);

    expect(find.text('Device 2'), findsOneWidget);
    expect(find.text('Summary 2'), findsOneWidget);
  });

  testWidgets('error', (tester) async {
    final model = mockModel(state: const FwupdState.error(error: 'Error'));
    await tester.pumpApp((_) => buildPage(model: model, daemon: mockDaemon()));

    expect(find.byType(ErrorWidget), findsOneWidget);
  });
}
