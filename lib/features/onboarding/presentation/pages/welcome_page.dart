import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/glow_circle.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051232),
      body: Container(
        child: Column(
          children: [
            GlowCircle(),
          ],
        ),
      ),
    );
  }
}
