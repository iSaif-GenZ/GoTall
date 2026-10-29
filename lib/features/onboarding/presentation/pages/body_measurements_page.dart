import 'package:flutter/material.dart';
import 'package:go_tall/core/routes/app_routes.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/body_measurements_form.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/custom_app_bar.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_primary_button.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/page_intro.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/step_progress_indicator.dart';

class BodyMeasurements extends StatefulWidget {
  const BodyMeasurements({super.key});
  @override
  State<BodyMeasurements> createState() => _BodyMeasurementsState();
}

class _BodyMeasurementsState extends State<BodyMeasurements> {
  bool isFormValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(currentStep: 2, title: "Body Measurements"),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      StepProgressIndicator(currentStep: 2, totalSteps: 4),
                      const SizedBox(height: 32.0),
                      const PageIntro(
                        title: "Your Body Measurements",
                        description:
                            "Enter your current height and weight to personalize your experience.",
                      ),
                      const SizedBox(height: 24.0),
                      BodyMeasurementsForm(
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
                                Navigator.of(
                                  context,
                                ).pushNamed(AppRoutes.parentsHeightsPage);
                              }
                            : null,

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
