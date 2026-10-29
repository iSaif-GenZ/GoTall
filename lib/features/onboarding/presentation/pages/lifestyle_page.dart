import 'package:flutter/material.dart';
import 'package:go_tall/core/routes/app_routes.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/custom_app_bar.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/lifestyle_form.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_primary_button.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/page_intro.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/step_progress_indicator.dart';

class LifestylePage extends StatefulWidget {
  const LifestylePage({super.key});

  @override
  State<LifestylePage> createState() => _LifestylePageState();
}

class _LifestylePageState extends State<LifestylePage> {
  bool isFormValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(currentStep: 4, title: "Lifestyle"),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 16.0),
                      StepProgressIndicator(currentStep: 4, totalSteps: 4),
                      const SizedBox(height: 32),
                      const PageIntro(
                        title: "Your Lifestyle",
                        description:
                            "Share your daily habits to help us tailor your growth plan.",
                      ),
                      const SizedBox(height: 24.0),
                      LifestyleForm(
                        onFormChanged: (isValid) {
                          setState(() {
                            isFormValid = isValid;
                          });
                        },
                      ),
                      const SizedBox(height: 32.0),
                      AppPrimaryButton(
                        onPressed: isFormValid
                            ? () {
                                Navigator.of(context).pushNamed(
                                  AppRoutes.growthCalculationScreenState,
                                );
                              }
                            : null,
                        text: "See My Result",
                        isActive: isFormValid,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
