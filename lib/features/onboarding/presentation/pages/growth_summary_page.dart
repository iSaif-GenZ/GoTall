import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_tall/core/theme/app_text_styles.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_primary_button.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/growth_habits_container.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/growth_result_animation.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/height_information_container.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/height_progress_container.dart';

class GrowthSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 24.0),
                  GrowthResultAnimation(),
                  const SizedBox(height: 24.0),
                  Text(
                    "Your Growth Result",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 24.0),
                  const Text("178cm", style: AppTextStyles.displayBold48),
                  const SizedBox(height: 8.0),
                  const Text(
                    "Estimated final height",
                    style: AppTextStyles.bodyRegular14,
                  ),
                  const SizedBox(height: 32.0),
                  const HeightInformationContainer(),
                  const SizedBox(height: 24.0),
                  Text(
                    "Your Growth Progress",
                    style: AppTextStyles.pageTitle.copyWith(height: 25 / 17),
                  ),
                  const SizedBox(height: 16.0),
                  HeightProgressContainer(),
                  const SizedBox(height: 24.0),
                  Text(
                    "Your Growth Habits",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16.0),
                  GrowthHabitsContainer(),
                  const SizedBox(height: 24.0),
                  AppPrimaryButton(
                    onPressed: () {},
                    isActive: true,
                    text: "Continue",
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
