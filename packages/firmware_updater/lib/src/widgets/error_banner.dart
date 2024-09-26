import 'package:flutter/material.dart';

class ErrorBanner extends StatefulWidget {
  const ErrorBanner({
    required this.child,
    this.message,
    super.key,
  });

  final Widget child;
  final String? message;

  @override
  State<ErrorBanner> createState() => _ErrorBannerState();
}

class _ErrorBannerState extends State<ErrorBanner> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.message != null && _visible)
            Container(
              color: Theme.of(context).colorScheme.errorContainer,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.message!,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color:
                                Theme.of(context).colorScheme.onErrorContainer,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  IconButton(
                    onPressed: () => setState(() => _visible = false),
                    icon: const Icon(Icons.close, size: 16),
                    padding: EdgeInsets.zero,
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -4,
                    ),
                    color: Theme.of(context).colorScheme.onErrorContainer,
                  ),
                ],
              ),
            ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}
