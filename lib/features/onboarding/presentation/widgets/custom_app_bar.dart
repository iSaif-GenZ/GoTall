import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  final int currentStep;
  const CustomAppBar({super.key, required this.currentStep});

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
          Icon(Icons.arrow_back, size: 24, color: AppColors.lightWhite),
          Text("Personal Details", style: Theme.of(context).textTheme.titleLarge,),
          Text("$currentStep / 4", style: Theme.of(context).textTheme.labelMedium,),
        ],
      ),
    );
  }
}
