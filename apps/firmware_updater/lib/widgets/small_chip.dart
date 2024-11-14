import 'package:flutter/material.dart';

class SmallChip extends StatelessWidget {
  const SmallChip({
    required this.text,
    super.key,
    this.color,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 10),
      backgroundColor: color ??
          Theme.of(context).disabledColor.withOpacity(
                Theme.of(context).brightness == Brightness.light ? 0.4 : 0.1,
              ),
    );
  }
}
