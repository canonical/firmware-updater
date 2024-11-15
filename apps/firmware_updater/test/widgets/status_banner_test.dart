import 'package:firmware_updater/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yaru/yaru.dart';

void main() {
  testWidgets('has progress', (tester) async {
    const message = 'message';
    const progress = 0.5;
    await tester.pumpWidget(
      const MaterialApp(
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        home: Scaffold(
          body: StatusBanner(message: message, progress: progress),
        ),
      ),
    );

    final indicator = find.byType(LinearProgressIndicator);
    expect(indicator, findsOneWidget);
    expect(tester.widget<LinearProgressIndicator>(indicator).value, progress);
    expect(find.text(message), findsOneWidget);
    expect(find.byType(YaruCircularProgressIndicator), findsOneWidget);
  });
}
