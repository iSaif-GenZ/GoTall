import 'package:flutter/cupertino.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/glow_circle.dart';

class WelcomeHeaderImage extends StatelessWidget {
  const WelcomeHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GlowCircle(
          color: AppColors.deepRoyalBlue,
          width: 300,
          height: 300,
          blur: 70,
          alpha: 0.4,
        ),
        Image.asset(
          "assets/images/welcome_page_image.jpg",
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
