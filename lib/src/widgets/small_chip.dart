import 'package:flutter/material.dart';

class SmallChip extends StatelessWidget {
  const SmallChip({
    Key? key,
    this.color,
    required this.text,
  }) : super(key: key);

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
      labelStyle: Theme.of(context).textTheme.caption!.copyWith(fontSize: 10),
      backgroundColor: color ??
          Theme.of(context).disabledColor.withOpacity(
              Theme.of(context).brightness == Brightness.light ? 0.4 : 0.1),
    );
  }
}
