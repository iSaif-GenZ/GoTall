import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/glow_circle.dart';

class GrowthCalculationAnimation extends StatefulWidget {
  const GrowthCalculationAnimation({super.key});

  @override
  State<GrowthCalculationAnimation> createState() =>
      _GrowthCalculationAnimationState();
}

class _GrowthCalculationAnimationState
    extends State<GrowthCalculationAnimation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          GlowCircle(
            color: AppColors.deepRoyalBlue,
            width: 180,
            height: 180,
            blur: 40,
            alpha: 0.30,
          ),
        ],
      ),
    );
  }
}
