import 'package:firmware_updater/l10n/app_localizations.dart';
import 'package:firmware_updater/services.dart';
import 'package:firmware_updater/widgets/recovery_key_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fwupd/fwupd.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:yaru/yaru.dart';

enum DialogAction { primaryAction, secondaryAction, cancel, close }

const kMaxWidth = 500.0;
const fdeLink =
    'https://discourse.ubuntu.com/t/hardware-backed-encryption-and-recovery-keys-in-ubuntu-desktop/58243';

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

class RecoveryKeyConfirmationDialog extends StatefulWidget {
  const RecoveryKeyConfirmationDialog({
    required this.title,
    this.body,
    this.actionText,
    this.checkRecoveryKey = false,
    this.onConfirm,
    super.key,
  });

  final String title;
  final Widget? body;
  final String? actionText;
  final bool checkRecoveryKey;
  final VoidCallback? onConfirm;

  @override
  State<RecoveryKeyConfirmationDialog> createState() =>
      _RecoveryKeyConfirmationDialogState();
}

class _RecoveryKeyConfirmationDialogState
    extends State<RecoveryKeyConfirmationDialog> {
  bool _loading = false;
  String? _error;

  void _setLoading(bool? loading) {
    if (loading == null || _loading == loading) return;
    setState(() => _loading = loading);
  }

  void _setError(String? error) {
    if (_error == error) return;
    setState(() => _error = error);
  }

  String _recoveryKey = '';

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final model = context.read<RecoveryKeyModel>();

    return AlertDialog(
      actions: [
        OutlinedButton(
          onPressed: () => Navigator.of(context).pop(DialogAction.cancel),
          child: Text(l10n.cancel),
        ),
        ElevatedButton(
          onPressed: _loading
              ? null
              : () async {
                  if (!widget.checkRecoveryKey) {
                    Navigator.of(context).pop(DialogAction.primaryAction);
                  }
                  _setLoading(true);
                  try {
                    final result = await model.checkRecoveryKey(_recoveryKey);
                    if (!result) {
                      _setLoading(false);
                      _setError(l10n.affectsFdeIncorrectKey);
                    } else if (context.mounted) {
                      Navigator.of(context).pop(DialogAction.primaryAction);
                    }
                  } on Exception catch (e) {
                    _setLoading(false);
                    _setError(e.toString());
                  }
                },
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
                  if (widget.checkRecoveryKey) ...[
                    const SizedBox(height: 8),
                    TextField(
                      enabled: !_loading,
                      decoration: InputDecoration(
                        hintText:
                            'XXXXX-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX-XXXXX',
                        labelText: l10n.affectsFdeTextFieldLabel,
                        errorText: _error,
                        errorMaxLines: 2,
                      ),
                      onChanged: (text) async {
                        _setError(null);
                        _recoveryKey = text;
                      },
                      style: TextStyle(
                        inherit: false,
                        fontFamily: 'Ubuntu Mono',
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize,
                        height: 20 / 14,
                        textBaseline: TextBaseline.alphabetic,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
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
  bool testDeviceAffectsFde = false,
}) {
  final l10n = AppLocalizations.of(context);

  final String actionText;
  final String dialogText;

  final affectsFde = device.flags.contains(FwupdDeviceFlag.affectsFde) ||
      testDeviceAffectsFde &&
          // fwupd 'Fake webcam' test device
          device.deviceId == '08d460be0f1f9f128413f816022a6439e0078018';

  final children = [
    if (!device.flags.contains(FwupdDeviceFlag.usableDuringUpdate)) ...[
      Text(l10n.deviceUnavailable),
    ],
    if (affectsFde) ...[
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
            Text(l10n.affectsFdeWarningBody1),
            const SizedBox(height: 8),
            Text(l10n.affectsFdeWarningBody2),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => launchUrlString(fdeLink),
                child: Text(
                  l10n.affectsFdeLinkLabel,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Theme.of(context).colorScheme.link),
                ),
              ),
            ),
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
    checkRecoveryKey: affectsFde,
    onConfirm: onInstall,
  );
}

Future<DialogAction?> showConfirmAndInstallDialog(
  BuildContext context, {
  required String title,
  VoidCallback? onConfirm,
  Widget? body,
  String? actionText,
  bool checkRecoveryKey = false,
}) async {
  final result = await showDialog<DialogAction>(
    context: context,
    builder: (context) => RecoveryKeyConfirmationDialog(
      title: title,
      body: body,
      onConfirm: onConfirm,
      actionText: actionText,
      checkRecoveryKey: checkRecoveryKey,
    ),
  );

  if (result == DialogAction.primaryAction && onConfirm != null) {
    onConfirm();
  }

  return result;
}
