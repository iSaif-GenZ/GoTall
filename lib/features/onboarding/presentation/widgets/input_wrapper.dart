import 'package:flutter/material.dart';

class InputWrapper extends StatelessWidget {
  final String label;
  final Widget child;
  final CrossAxisAlignment alignment;
  const InputWrapper({
    super.key,
    required this.label,
    required this.child,
    this.alignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToFirstAscent: false,
            applyHeightToLastDescent: false,
          ),
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
