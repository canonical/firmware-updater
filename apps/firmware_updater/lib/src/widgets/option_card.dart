import 'package:flutter/material.dart';

class OptionCard extends StatefulWidget {
  const OptionCard({
    required this.child,
    required this.selected,
    required this.onSelected,
    super.key,
  });

  final Widget child;
  final bool selected;
  final VoidCallback onSelected;

  @override
  State<OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<OptionCard> {
  bool _hovered = false;
  bool get hovered => _hovered;

  void _setHovered(bool hovered) {
    if (_hovered == hovered) return;
    setState(() => _hovered = hovered);
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: widget.selected
              ? Theme.of(context).primaryColor.withOpacity(0.5)
              : Theme.of(context)
                  .colorScheme
                  .onSurface
                  .withAlpha(hovered ? 60 : 20),
          width: 2,
        ),
      ),
      child: InkWell(
        hoverColor: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(6),
        onHover: _setHovered,
        onTap: widget.onSelected,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: widget.child,
        ),
      ),
    );
  }
}
