import 'package:flutter/cupertino.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/glow_circle.dart';

class WelcomeHeaderImage extends StatelessWidget {
  const WelcomeHeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GlowCircle(),
        Image.asset(
          "assets/images/welcome_page_image.jpg",
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
