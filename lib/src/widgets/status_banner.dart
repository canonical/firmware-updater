import 'package:flutter/material.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class StatusBanner extends StatelessWidget {
  const StatusBanner({
    super.key,
    required this.message,
    this.progress,
    this.visible = true,
  });

  final String message;
  final double? progress;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            YaruLinearProgressIndicator(value: progress),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(message, style: Theme.of(context).textTheme.caption),
                const SizedBox(width: 8.0),
                const SizedBox(
                  height: 24,
                  child: YaruCircularProgressIndicator(strokeWidth: 3),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
