import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> showMessageDialog(
  BuildContext context, {
  required IconData icon,
  required String title,
  required String message,
}) {
  return showDialog(
    context: context,
    builder: (_) => MessageDialog(
      icon: icon,
      title: title,
      message: message,
    ),
  );
}

class MessageDialog extends StatelessWidget {
  const MessageDialog({
    Key? key,
    required this.icon,
    required this.title,
    required this.message,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: AlertDialog(
        title: Text(title),
        titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        contentPadding: const EdgeInsets.all(16),
        content: Row(
          children: [
            Icon(icon, size: 48),
            const SizedBox(width: 24),
            Expanded(child: Text(message)),
          ],
        ),
        buttonPadding: const EdgeInsets.only(left: 16),
        actionsPadding: const EdgeInsets.fromLTRB(0, 0, 12, 12),
        actions: [
          OutlinedButton(
            onPressed: Navigator.of(context).pop,
            child: Text(l10n.close),
          )
        ],
      ),
    );
  }
}
