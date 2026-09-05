import 'package:flutter/material.dart';

class PageIntro extends StatelessWidget {
  final String title;
  final String description;
  const PageIntro({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Let’s Get to Know You\n",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          TextSpan(
            text:
                "Enter some basic information to personalize your experience.",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
      textHeightBehavior: const TextHeightBehavior(
        applyHeightToFirstAscent: false,
        applyHeightToLastDescent: false,
      ),
    );
  }
}
