import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/core/theme/app_text_styles.dart';

class GrowthHabitsContainer extends StatelessWidget {
  const GrowthHabitsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0),
      width: double.infinity,
      height: 96.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sleep 8 hrs",
            style: AppTextStyles.bodyRegular14.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.lightWhite,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            "Activity Good",
            style: AppTextStyles.bodyRegular14.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.lightWhite,
            ),
          ),
        ],
      ),
    );
  }
}
