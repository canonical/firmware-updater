import 'package:firmware_updater/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fwupd/fwupd.dart';
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
  Widget? body,
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
                if (body != null) ...[
                  const SizedBox(height: 8),
                  body,
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
  Widget? body,
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
      body: body,
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
      body: message != null ? Text(message) : null,
      icon: Icon(
        YaruIcons.error,
        size: 64.0,
        color: Theme.of(context).colorScheme.error,
      ),
      onClose: onClose,
    );

class CheckboxConfirmationDialog extends StatefulWidget {
  const CheckboxConfirmationDialog({
    required this.title,
    this.body,
    this.actionText,
    this.checkboxText,
    this.onConfirm,
    super.key,
  });

  final String title;
  final Widget? body;
  final String? actionText;
  final String? checkboxText;
  final VoidCallback? onConfirm;

  @override
  State<CheckboxConfirmationDialog> createState() =>
      _CheckboxConfirmationDialogState();
}

class _CheckboxConfirmationDialogState
    extends State<CheckboxConfirmationDialog> {
  bool _confirmed = false;
  bool get confirmed => _confirmed;

  void _setConfirmed(bool? confirmed) {
    if (confirmed == null || _confirmed == confirmed) return;
    setState(() => _confirmed = confirmed);
  }

  bool get actionable => widget.checkboxText == null || confirmed;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return AlertDialog(
      actions: [
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop(DialogAction.cancel),
          child: Text(l10n.cancel),
        ),
        ElevatedButton(
          onPressed: actionable
              ? () => Navigator.of(context).pop(DialogAction.primaryAction)
              : null,
          child: Text(widget.actionText ?? l10n.ok),
        ),
      ],
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(YaruIcons.update_available, size: 64.0),
            const SizedBox(width: 16),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Theme.of(context).textTheme.titleMedium!.fontSize! *
                        1.5,
                    width: kMaxWidth,
                    child: Html(
                      data: widget.title,
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
                  if (widget.body != null) ...[
                    const SizedBox(height: 8),
                    widget.body!,
                  ],
                  if (widget.checkboxText != null) ...[
                    const SizedBox(height: 8),
                    YaruCheckButton(
                      title: Text(
                        widget.checkboxText!,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      value: confirmed,
                      onChanged: _setConfirmed,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void confirmAndInstall(
  BuildContext context, {
  required FwupdRelease release,
  required FwupdDevice device,
  VoidCallback? onInstall,
}) {
  final l10n = AppLocalizations.of(context);

  final String actionText;
  final String dialogText;
  final String? checkboxText;

  if (device.flags.contains(FwupdDeviceFlag.affectsFde)) {
    checkboxText = l10n.affectsFdeCheckbox;
  } else {
    checkboxText = null;
  }

  final children = [
    if (!device.flags.contains(FwupdDeviceFlag.usableDuringUpdate)) ...[
      Text(l10n.deviceUnavailable),
    ],
    if (device.flags.contains(FwupdDeviceFlag.affectsFde)) ...[
      const SizedBox(height: 8),
      YaruInfoBox(
        yaruInfoType: YaruInfoType.warning,
        title: Text(l10n.affectsFdeWarningTitle),
        titleTextStyle: Theme.of(context).textTheme.titleSmall,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text(l10n.affectsFdeWarningBody),
          ],
        ),
      ),
    ],
  ];

  final body = switch (children.length) {
    0 => null,
    1 => children[0],
    _ => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
  };

  if (release.isDowngrade) {
    actionText = l10n.downgrade;
    dialogText = l10n.downgradeConfirm(
      device.name,
      release.version,
    );
  } else if (release.isUpgrade) {
    actionText = l10n.update;
    dialogText = l10n.updateConfirm(
      device.name,
      release.version,
    );
  } else {
    actionText = l10n.reinstall;
    dialogText = l10n.reinstallConfirm(
      device.name,
      device.version ?? '',
    );
  }

  showConfirmAndInstallDialog(
    context,
    title: dialogText,
    body: body,
    actionText: actionText,
    checkboxText: checkboxText,
    onConfirm: onInstall,
  );
}

Future<DialogAction?> showConfirmAndInstallDialog(
  BuildContext context, {
  required String title,
  VoidCallback? onConfirm,
  Widget? body,
  String? actionText,
  String? checkboxText,
}) async {
  final result = await showDialog<DialogAction>(
    context: context,
    builder: (context) => CheckboxConfirmationDialog(
      title: title,
      body: body,
      onConfirm: onConfirm,
      actionText: actionText,
      checkboxText: checkboxText,
    ),
  );

  if (result == DialogAction.primaryAction && onConfirm != null) {
    onConfirm();
  }

  return result;
}
