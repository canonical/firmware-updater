import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:yaru_icons/yaru_icons.dart';

enum DialogAction { action, cancel, close }

const kMaxWidth = 500.0;

Future<DialogAction?> showGeneralDialog(
  BuildContext context, {
  required Widget body,
  String? actionText,
  VoidCallback? onAction,
  VoidCallback? onCancel,
  VoidCallback? onClose,
  bool closeable = true,
}) async {
  final l10n = AppLocalizations.of(context);
  final result = await showDialog<DialogAction>(
    context: context,
    builder: (context) => AlertDialog(
      actions: [
        if (closeable)
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(DialogAction.close),
            child: Text(l10n.close),
          ),
        if (onCancel != null)
          OutlinedButton(
            onPressed: () => Navigator.of(context).pop(DialogAction.cancel),
            child: Text(l10n.cancel),
          ),
        if (onAction != null)
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(DialogAction.action),
            child: Text(actionText ?? l10n.ok),
          ),
      ],
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: body,
      ),
    ),
  );
  switch (result) {
    case DialogAction.action:
      onAction!();
      break;
    case DialogAction.cancel:
      onCancel!();
      break;
    case DialogAction.close:
      if (onClose != null) onClose();
      break;
    default:
  }
  return result;
}

Future<DialogAction?> showDeviceRequestDialog(
  BuildContext context, {
  String? message,
  String? imageUrl,
}) {
  final l10n = AppLocalizations.of(context);
  return showGeneralDialog(
    context,
    body: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          l10n.deviceRequest,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        if (message != null) ...[
          const SizedBox(height: 8),
          Text(message),
        ],
        if (imageUrl != null) ...[
          const SizedBox(height: 8),
          Image.network(
            imageUrl,
            errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported),
          ),
        ],
      ],
    ),
  );
}

Future<DialogAction?> showMessageDialog(
  BuildContext context, {
  required String title,
  String? message,
  String? actionText,
  Icon? icon,
  VoidCallback? onAction,
  VoidCallback? onCancel,
  VoidCallback? onClose,
  bool closeable = true,
}) =>
    showGeneralDialog(
      context,
      body: Row(
        children: [
          if (icon != null) ...[icon, const SizedBox(width: 16)],
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height:
                      Theme.of(context).textTheme.titleMedium!.fontSize! * 1.5,
                  width: kMaxWidth,
                  child: Html(
                    data: title,
                    style: {
                      'body': Style(
                        margin: Margins.zero,
                        fontSize: FontSize(
                          Theme.of(context).textTheme.titleMedium!.fontSize!,
                        ),
                      ),
                    },
                  ),
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
      actionText: actionText,
      closeable: closeable,
      onAction: onAction,
      onCancel: onCancel,
      onClose: onClose,
    );

Future<DialogAction?> showConfirmationDialog(
  BuildContext context, {
  required String title,
  String? message,
  String? actionText,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
  IconData? icon = YaruIcons.question,
}) =>
    showMessageDialog(
      context,
      title: title,
      message: message,
      actionText: actionText,
      icon: Icon(icon, size: 64.0),
      onCancel: onCancel ?? () {},
      onAction: onConfirm ?? () {},
      closeable: false,
    );

Future<DialogAction?> showErrorDialog(
  BuildContext context, {
  required String title,
  String? message,
  VoidCallback? onClose,
}) =>
    showMessageDialog(
      context,
      title: title,
      message: message,
      icon: Icon(YaruIcons.error,
          size: 64.0, color: Theme.of(context).colorScheme.error),
      onClose: onClose,
    );
