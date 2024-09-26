import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({
    required this.isBusy,
    required this.onPressed,
    super.key,
  });

  final bool isBusy;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Theme.of(context).appBarTheme.titleTextStyle?.color ??
          Theme.of(context).colorScheme.onSurface,
      splashRadius: 24,
      icon: isBusy
          ? const SizedBox(
              width: 24,
              height: 24,
              child: YaruCircularProgressIndicator(),
            )
          : const Icon(YaruIcons.refresh),
      onPressed: isBusy ? null : onPressed,
    );
  }
}
