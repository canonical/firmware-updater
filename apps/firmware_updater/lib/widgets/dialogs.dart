import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:yaru/yaru.dart';

enum DialogAction { primaryAction, secondaryAction, cancel, close }

const kMaxWidth = 500.0;

Future<DialogAction?> showGeneralDialog(
  BuildContext context, {
  required Widget body,
  String? primaryActionText,
  String? secondaryActionText,
  String? cancelText,
  VoidCallback? onPrimaryAction,
  VoidCallback? onSecondaryAction,
  VoidCallback? onCancel,
  VoidCallback? onClose,
  bool closeable = true,
}) async {
  assert(
    (secondaryActionText == null) == (onSecondaryAction == null),
    'must specify either both `secondaryActionText` and `onSecondaryAction` or none of those',
  );
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
            child: Text(cancelText ?? l10n.cancel),
          ),
        if (onSecondaryAction != null)
          OutlinedButton(
            onPressed: () =>
                Navigator.of(context).pop(DialogAction.secondaryAction),
            child: Text(secondaryActionText!),
          ),
        if (onPrimaryAction != null)
          ElevatedButton(
            onPressed: () =>
                Navigator.of(context).pop(DialogAction.primaryAction),
            child: Text(primaryActionText ?? l10n.ok),
          ),
      ],
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: body,
      ),
    ),
  );
  switch (result) {
    case DialogAction.primaryAction:
      onPrimaryAction!();
      break;
    case DialogAction.secondaryAction:
      onSecondaryAction!();
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
  String? cancelText,
  Icon? icon,
  VoidCallback? onAction,
  VoidCallback? onCancel,
  VoidCallback? onClose,
  bool closeable = true,
  bool isPrimaryAction = true,
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
      closeable: closeable,
      primaryActionText: isPrimaryAction ? actionText : null,
      onPrimaryAction: isPrimaryAction ? onAction : null,
      secondaryActionText: isPrimaryAction ? null : actionText,
      onSecondaryAction: isPrimaryAction ? null : onAction,
      cancelText: cancelText,
      onCancel: onCancel,
      onClose: onClose,
    );

Future<DialogAction?> showConfirmationDialog(
  BuildContext context, {
  required String title,
  String? message,
  String? actionText,
  String? cancelText,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
  IconData? icon = YaruIcons.question,
  bool isPrimaryAction = true,
}) =>
    showMessageDialog(
      context,
      title: title,
      message: message,
      actionText: actionText,
      cancelText: cancelText,
      icon: Icon(icon, size: 64.0),
      onCancel: onCancel ?? () {},
      onAction: onConfirm ?? () {},
      closeable: false,
      isPrimaryAction: isPrimaryAction,
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
      icon: Icon(
        YaruIcons.error,
        size: 64.0,
        color: Theme.of(context).colorScheme.error,
      ),
      onClose: onClose,
    );
