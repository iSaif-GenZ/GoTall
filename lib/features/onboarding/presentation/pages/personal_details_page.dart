import 'package:flutter/material.dart';
import 'package:go_tall/core/routes/app_routes.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/personal_details_form.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/custom_app_bar.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_primary_button.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/page_intro.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/step_progress_indicator.dart';

class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({super.key});

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  bool _isFormValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(currentStep: 1, title: "Personal Details"),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 16.0),
                      StepProgressIndicator(currentStep: 1, totalSteps: 4),
                      const SizedBox(height: 32.0),
                      const PageIntro(
                        title: "Let’s Get to Know You",
                        description:
                            "Enter some basic information to personalize your experience.",
                      ),
                      const SizedBox(height: 24.0),
                      PersonalDetailsform(
                        onFormChanged: (isValid) {
                          setState(() {
                            _isFormValid = isValid;
                          });
                        },
                      ),
                      const SizedBox(height: 32.0),
                      AppPrimaryButton(
                        onPressed: _isFormValid
                              ? () {
                                 Navigator.of(
                                    context,
                                  ).pushNamed(AppRoutes.bodyMeasurementsPage);
                                }
                              : null,
                        
                        isActive: _isFormValid,
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
