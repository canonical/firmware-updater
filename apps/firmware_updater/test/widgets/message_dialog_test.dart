import 'dart:async';

import 'package:firmware_updater/recovery_key_model.dart';
import 'package:firmware_updater/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';

import '../test_utils.dart';

void main() {
  testWidgets('message dialog', (tester) async {
    const icon = Icons.info;
    const title = 'title';
    const message = 'message';
    await tester.pumpApp(
      (context) => Scaffold(
        body: OutlinedButton(
          onPressed: () => showMessageDialog(
            context,
            title: title,
            body: Text(message),
            icon: const Icon(icon),
          ),
          child: const Text('click me'),
        ),
      ),
    );
    await tester.tap(find.text('click me'));
    await tester.pumpAndSettle();
    expect(find.byIcon(icon), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.text(message), findsOneWidget);
    expect(find.text(tester.lang.close), findsOneWidget);
  });

  testWidgets('confirmation dialog', (tester) async {
    const title = 'title';
    const message = 'message';
    final completer = Completer<void>();
    await tester.pumpApp(
      (context) => Scaffold(
        body: OutlinedButton(
          onPressed: () => showConfirmationDialog(
            context,
            title: title,
            body: Text(message),
            onConfirm: completer.complete,
          ),
          child: const Text('click me'),
        ),
      ),
    );
    await tester.tap(find.text('click me'));
    await tester.pumpAndSettle();
    expect(find.byIcon(YaruIcons.question), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.text(message), findsOneWidget);

    final okButton = find.text(tester.lang.ok);
    expect(okButton, findsOneWidget);
    expect(find.text(tester.lang.cancel), findsOneWidget);

    await tester.tap(okButton);
    expect(completer.isCompleted, isTrue);
  });

  testWidgets('cancel confirmation dialog', (tester) async {
    const title = 'title';
    const message = 'message';
    final completer = Completer<void>();
    await tester.pumpApp(
      (context) => Scaffold(
        body: OutlinedButton(
          onPressed: () => showConfirmationDialog(
            context,
            title: title,
            body: Text(message),
            onCancel: completer.complete,
          ),
          child: const Text('click me'),
        ),
      ),
    );
    await tester.tap(find.text('click me'));
    await tester.pumpAndSettle();
    expect(find.byIcon(YaruIcons.question), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.text(message), findsOneWidget);

    expect(find.text(tester.lang.ok), findsOneWidget);
    final cancelButton = find.text(tester.lang.cancel);
    expect(cancelButton, findsOneWidget);

    await tester.tap(cancelButton);
    expect(completer.isCompleted, isTrue);
  });

  testWidgets('error dialog', (tester) async {
    const title = 'title';
    const message = 'message';
    final completer = Completer<void>();
    await tester.pumpApp(
      (context) => Scaffold(
        body: OutlinedButton(
          onPressed: () => showErrorDialog(
            context,
            title: title,
            message: message,
            onClose: completer.complete,
          ),
          child: const Text('click me'),
        ),
      ),
    );
    await tester.tap(find.text('click me'));
    await tester.pumpAndSettle();
    final errorIcon = find.byIcon(YaruIcons.error);
    expect(errorIcon, findsOneWidget);
    expect(
      (tester.firstWidget(errorIcon) as Icon).color,
      tester.theme.colorScheme.error,
    );
    expect(find.text(title), findsOneWidget);
    expect(find.text(message), findsOneWidget);

    final closeButton = find.text(tester.lang.close);
    expect(closeButton, findsOneWidget);

    await tester.tap(closeButton);
    expect(completer.isCompleted, isTrue);
  });

  testWidgets('recovery key confirmation dialog', (tester) async {
    const title = 'title';
    const message = 'message';
    final completer = Completer<void>();
    final recoveryKeyModel = mockRecoveryKeyModel(validKey: 'valid key');
    await tester.pumpApp(
      (context) => Scaffold(
        body: OutlinedButton(
          onPressed: () => showConfirmAndInstallDialog(
            context,
            title: title,
            body: Text(message),
            onConfirm: completer.complete,
            recoveryKeyCheck: RecoveryKeyCheck.enterKey,
          ),
          child: const Text('click me'),
        ),
      ),
      providers: [Provider<RecoveryKeyModel>(create: (_) => recoveryKeyModel)],
    );
    await tester.tap(find.text('click me'));
    await tester.pumpAndSettle();
    expect(find.byIcon(YaruIcons.update_available), findsOneWidget);
    expect(find.text(title), findsOneWidget);
    expect(find.text(message), findsOneWidget);

    final okButton = find.text(tester.lang.ok);
    expect(okButton, findsOneWidget);
    expect(find.text(tester.lang.cancel), findsOneWidget);

    await tester.tap(okButton);
    await tester.pumpAndSettle();
    expect(completer.isCompleted, isFalse);

    final textField = find.byType(TextField);
    await tester.enterText(textField, 'invalid key');
    await tester.pumpAndSettle();
    await tester.tap(okButton);
    await tester.pumpAndSettle();
    expect(completer.isCompleted, isFalse);
    expect(find.text(tester.lang.affectsFdeIncorrectKey), findsOneWidget);

    await tester.enterText(textField, 'valid key');
    await tester.pumpAndSettle();
    await tester.tap(okButton);
    expect(completer.isCompleted, isTrue);
  });
}
