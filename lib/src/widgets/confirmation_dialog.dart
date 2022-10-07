import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yaru_icons/yaru_icons.dart';

Future<void> showMessageDialog(
  BuildContext context, {
  required String title,
  String? message,
  String? okText,
  Icon? icon,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) async {
  final l10n = AppLocalizations.of(context);
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      actions: [
        if (onCancel != null)
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.cancel),
          ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(okText ?? l10n.ok),
        ),
      ],
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Row(
          children: [
            if (icon != null) icon,
            const SizedBox(width: 16),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  if (message != null) ...[
                    const SizedBox(height: 8),
                    Text(message),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
  if (true == confirmed && onConfirm != null) {
    onConfirm();
  } else if (onCancel != null) {
    onCancel();
  }
}

Future<void> showConfirmationDialog(
  BuildContext context, {
  required String title,
  String? message,
  String? okText,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) =>
    showMessageDialog(
      context,
      title: title,
      message: message,
      okText: okText,
      icon: const Icon(YaruIcons.question, size: 64.0),
      onCancel: onCancel,
      onConfirm: onConfirm,
    );

Future<void> showErrorDialog(
  BuildContext context, {
  required String title,
  String? message,
  VoidCallback? onConfirm,
}) =>
    showMessageDialog(
      context,
      title: title,
      message: message,
      icon: Icon(YaruIcons.error,
          size: 64.0, color: Theme.of(context).colorScheme.error),
      onConfirm: onConfirm,
    );
