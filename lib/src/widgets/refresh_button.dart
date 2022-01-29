import 'package:flutter/material.dart';
import 'package:yaru_icons/yaru_icons.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({
    Key? key,
    required this.isBusy,
    required this.onPressed,
  }) : super(key: key);

  final bool isBusy;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 24,
      icon: isBusy
          ? const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(),
            )
          : const Icon(YaruIcons.refresh),
      onPressed: isBusy ? null : onPressed,
    );
  }
}
