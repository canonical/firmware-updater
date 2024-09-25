import 'package:firmware_updater/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fwupd/fwupd.dart';

void main() {
  testWidgets('has progress', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        home: Scaffold(
          appBar: AppProgressBar(
            title: 'title',
            status: FwupdStatus.deviceWrite,
            progress: 0.5,
          ),
        ),
      ),
    );

    final indicator = find.byType(LinearProgressIndicator);
    expect(indicator, findsOneWidget);
    expect(tester.widget<LinearProgressIndicator>(indicator).value, 0.5);
  });

  testWidgets('no progress', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        home: Scaffold(
          appBar: AppProgressBar(
            title: 'title',
            status: FwupdStatus.idle,
          ),
        ),
      ),
    );

    expect(find.byType(LinearProgressIndicator), findsNothing);
  });
}
