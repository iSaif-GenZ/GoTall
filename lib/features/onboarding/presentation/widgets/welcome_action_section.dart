import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeActionSection extends StatelessWidget {
  const WelcomeActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          "Start your height growth journey today",
          style: TextStyle(
            fontSize: 36,
            fontFamily: 'PlusJakartaSans',
            fontWeight: FontWeight.w600,
            color: Color(0xFFF0F0F8),
          ),
        ),
        SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 56,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF00E8F8),
              elevation: 0,
            ),
            onPressed: () {},
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Color(0xFF051232),
                fontSize: 16,
                fontFamily: 'PlusJakartaSans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
