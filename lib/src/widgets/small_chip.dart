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
      label: Text(text),
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      labelStyle: Theme.of(context).textTheme.caption!.copyWith(fontSize: 10),
      backgroundColor:
          color ?? Theme.of(context).disabledColor.withOpacity(0.1),
    );
  }
}
