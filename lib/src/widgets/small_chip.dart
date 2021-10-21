import 'package:flutter/material.dart';

class SmallChip extends StatelessWidget {
  const SmallChip({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text),
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      labelStyle: Theme.of(context).textTheme.caption!.copyWith(fontSize: 10),
    );
  }
}
