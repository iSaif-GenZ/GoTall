import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/welcome_action_section.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/welcome_header_image.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 72),
              WelcomeHeaderImage(),
              const SizedBox(height: 196),
              WelcomeActionSection(),
              const SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
