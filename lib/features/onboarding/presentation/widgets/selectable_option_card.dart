import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/core/theme/app_durations.dart';

class SelectableOptionCard extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  const SelectableOptionCard({
    super.key,
    required this.label,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: AppDurations.button,
        alignment: Alignment.center,
        height: 52,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryTurquoise
              : AppColors.midnightNavy,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? AppColors.primaryTurquoise
                : AppColors.darkBlueOutline,
            width: 1.0,
          ),
        ),
        child: Text(
          label,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: isSelected ? AppColors.darkNavy : null,
          ),
        ),
      ),
    );
  }
}
