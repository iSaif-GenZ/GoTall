import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/core/theme/app_text_styles.dart';

class HeightInformationContainer extends StatelessWidget {
  const HeightInformationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        color: AppColors.deepNavy,
        border: Border.all(
          color: AppColors.deepRoyalBlue.withValues(alpha: 0.35),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Current Height",
                  style: AppTextStyles.bodyRegular14,
                ),
                const Text("165 cm", style: AppTextStyles.customText16),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Potential Growth",
                  style: AppTextStyles.bodyRegular14,
                ),
                Text(
                  "+13 cm",
                  style: AppTextStyles.customText16.copyWith(
                    color: Color(0xFF00E8F8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
