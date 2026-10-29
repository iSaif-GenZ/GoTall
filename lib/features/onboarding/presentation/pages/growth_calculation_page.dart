import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_text_styles.dart';
import 'package:go_tall/features/onboarding/presentation/pages/growth_summary_page.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/growth_calculation_animation.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/growth_progress_bar.dart';

class GrowthCalculationPage extends StatefulWidget {
  const GrowthCalculationPage({super.key});

  @override
  State<GrowthCalculationPage> createState() => _GrowthCalculationPageState();
}

class _GrowthCalculationPageState extends State<GrowthCalculationPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GrowthSummaryPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GrowthCalculationAnimation(),
              const SizedBox(height: 24.0),
              SizedBox(
                width: 342,
                child: Text(
                  "Calculating Your Growth Profile",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                "We're putting your growth profile together…",
                style: AppTextStyles.bodyRegular14,
              ),
              const SizedBox(height: 24.0),
              GrowthProgressBar(),
            ],
          ),
        ),
      ),
    );
  }
}
