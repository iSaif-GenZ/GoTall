import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_tall/core/routes/app_routes.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/welcome_start_button.dart';

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
          child: WelcomeStartButton(onPressed: () async {
            await Navigator.of(context).pushNamed(
              AppRoutes.personalDetailsPage,
            );
          }),
        ),
      ],
    );
  }
}
