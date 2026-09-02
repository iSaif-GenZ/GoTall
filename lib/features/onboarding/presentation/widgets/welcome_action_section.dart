import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeActionSection extends StatelessWidget {
  const WelcomeActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Start your height growth journey today",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(onPressed: () {}, child: Text("Get Started")),
        ),
      ],
    );
  }
}
