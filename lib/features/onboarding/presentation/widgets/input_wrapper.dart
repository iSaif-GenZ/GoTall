import 'package:flutter/material.dart';

class InputWrapper extends StatelessWidget {
  final String label;
  final Widget child;
  const InputWrapper({super.key, required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall,
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToFirstAscent: false,
            applyHeightToLastDescent: false,
          ),
        ),
        SizedBox(height: 8,),
        child,
      ],
    );
  }
}
