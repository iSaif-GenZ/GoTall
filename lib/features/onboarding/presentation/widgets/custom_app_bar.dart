import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/custom_back_button.dart';

class CustomAppBar extends StatelessWidget {
  final int currentStep;
  final String title;
  const CustomAppBar({super.key, required this.currentStep, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkNavy,
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: kToolbarHeight,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomBackButton(),
          Text(title, style: Theme.of(context).textTheme.titleLarge,),
          Text("$currentStep / 4", style: Theme.of(context).textTheme.labelMedium,),
        ],
      ),
    );
  }
}
