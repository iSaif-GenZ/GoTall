import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/glow_circle.dart';

class GrowthResultAnimation extends StatefulWidget {
  const GrowthResultAnimation({super.key});

  @override
  State<GrowthResultAnimation> createState() => _GrowthResultAnimationState();
}

class _GrowthResultAnimationState extends State<GrowthResultAnimation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          GlowCircle(
            color: AppColors.cyanGlow,
            width: 160,
            height: 160,
            blur: 35,
            alpha: 0.28,
          ),
        ],
      ),
    );
  }
}
