import 'package:flutter/material.dart';

class OptionCard extends StatefulWidget {
  const OptionCard({
    super.key,
    required this.child,
    required this.selected,
    required this.onSelected,
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
    return Card(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: widget.selected
                  ? Theme.of(context).primaryColor.withOpacity(0.5)
                  : Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withAlpha(hovered ? 60 : 20),
              width: 2),
          borderRadius: BorderRadius.circular(6)),
      elevation: 0,
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
