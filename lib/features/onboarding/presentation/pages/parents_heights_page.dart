import 'package:flutter/material.dart';
import 'package:go_tall/core/routes/app_routes.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/custom_app_bar.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_primary_button.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/page_intro.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/parents_heights_form.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/step_progress_indicator.dart';

class ParentsHeights extends StatefulWidget {
  const ParentsHeights({super.key});
  @override
  State<ParentsHeights> createState() => _ParentsHeightsState();
}

class _ParentsHeightsState extends State<ParentsHeights> {
  bool isFormValid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(currentStep: 3, title: "Parents' Heights"),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      const SizedBox(height: 16.0),
                      StepProgressIndicator(currentStep: 3, totalSteps: 4),
                      const SizedBox(height: 32),
                      const PageIntro(
                        title: "Family Genetics",
                        description:
                            "Enter your parents' height to help us accurately estimate your growth potential.",
                      ),
                      const SizedBox(height: 24.0),
                      ParentsHeightsForm(
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
                                ).pushNamed(AppRoutes.lifestylePage);
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
