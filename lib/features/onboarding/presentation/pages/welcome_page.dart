import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/glow_circle.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051232),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 72),
            Stack(
              children: [
                const GlowCircle(),
                Image.asset(
                  "assets/images/welcome_page_image.jpg",
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
