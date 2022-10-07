import 'dart:async';

import 'package:firmware_updater/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yaru_icons/yaru_icons.dart';

void main() {
  testWidgets('message dialog', (tester) async {
    const icon = Icons.info;
    const title = 'title';
    const message = 'message';
    final navigatorKey = GlobalKey<NavigatorState>();
    await tester.pumpWidget(
      MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Builder(builder: (context) {
          return OutlinedButton(
            onPressed: () => showMessageDialog(
              context,
              title: title,
              message: message,
              icon: const Icon(icon),
            ),
            child: const Text('click me'),
          );
        }),
      ),
    );
    await tester.tap(find.text('click me'));
    await tester.pumpAndSettle();
    final l10n = AppLocalizations.of(navigatorKey.currentContext!);
    expect(find.byIcon(icon), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.text(message), findsOneWidget);
    expect(find.text(l10n.close), findsOneWidget);
  });

  testWidgets('confirmation dialog', (tester) async {
    const title = 'title';
    const message = 'message';
    final navigatorKey = GlobalKey<NavigatorState>();
    final completer = Completer<void>();
    await tester.pumpWidget(
      MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Builder(builder: (context) {
          return OutlinedButton(
            onPressed: () => showConfirmationDialog(
              context,
              title: title,
              message: message,
              onConfirm: completer.complete,
              onCancel: () {},
            ),
            child: const Text('click me'),
          );
        }),
      ),
    );
    await tester.tap(find.text('click me'));
    await tester.pumpAndSettle();
    final l10n = AppLocalizations.of(navigatorKey.currentContext!);
    expect(find.byIcon(YaruIcons.question), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.text(message), findsOneWidget);

    final okButton = find.text(l10n.ok);
    expect(okButton, findsOneWidget);
    expect(find.text(l10n.cancel), findsOneWidget);

    await tester.tap(okButton);
    expect(completer.isCompleted, isTrue);
  });

  testWidgets('error dialog', (tester) async {
    const title = 'title';
    const message = 'message';
    final navigatorKey = GlobalKey<NavigatorState>();
    final completer = Completer<void>();
    await tester.pumpWidget(
      MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Builder(builder: (context) {
          return OutlinedButton(
            onPressed: () => showErrorDialog(
              context,
              title: title,
              message: message,
              onClose: completer.complete,
            ),
            child: const Text('click me'),
          );
        }),
      ),
    );
    await tester.tap(find.text('click me'));
    await tester.pumpAndSettle();
    final l10n = AppLocalizations.of(navigatorKey.currentContext!);
    final errorIcon = find.byIcon(YaruIcons.error);
    expect(errorIcon, findsOneWidget);
    expect((tester.firstWidget(errorIcon) as Icon).color,
        Theme.of(navigatorKey.currentContext!).colorScheme.error);
    expect(find.text(title), findsOneWidget);
    expect(find.text(message), findsOneWidget);

    final closeButton = find.text(l10n.close);
    expect(closeButton, findsOneWidget);

    await tester.tap(closeButton);
    expect(completer.isCompleted, isTrue);
  });
}
