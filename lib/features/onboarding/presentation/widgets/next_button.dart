import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/core/theme/app_text_styles.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isActive;
  const NextButton({super.key, required this.onPressed, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: AppColors.primaryTurquoise.withValues(alpha: 0.25),
                  offset: const Offset(0, 4),
                  blurRadius: 12,
                  spreadRadius: 0,
                ),
              ]
            : [],
      ),
      child: ElevatedButton(
        onPressed: isActive ? onPressed : null,
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColors.deepNavy;
            }
            return AppColors.primaryTurquoise;
          }),
          shape: WidgetStateProperty.resolveWith<OutlinedBorder>((states) {
            if (states.contains(WidgetState.disabled)) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: BorderSide(color: AppColors.darkBlueOutline, width: 1.5),
              );
            }
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(
                color: AppColors.primaryTurquoise,
                width: 1.5,
              ),
            );
          }),
        ),
        child: Text(
          "Next",
          style: AppTextStyles.buttonLabel.copyWith(
            color: isActive ? AppColors.darkNavy : null,
          ),
        ),
      ),
    );
  }
}
