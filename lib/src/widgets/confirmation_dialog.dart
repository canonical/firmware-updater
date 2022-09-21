import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yaru_icons/yaru_icons.dart';

Future<void> showConfirmationDialog(
  BuildContext context, {
  required String text,
  String? description,
  String? okText,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) async {
  final l10n = AppLocalizations.of(context);
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      actions: [
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
            const Icon(
              YaruIcons.question,
              size: 64.0,
            ),
            const SizedBox(width: 16),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  if (description != null) ...[
                    const SizedBox(height: 8),
                    Text(description),
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
