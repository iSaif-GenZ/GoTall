import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/glow_circle.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/welcome_action_section.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/welcome_header_image.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051232),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 72),
              WelcomeHeaderImage(),
              SizedBox(height: 196),
              WelcomeActionSection(),
              SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
