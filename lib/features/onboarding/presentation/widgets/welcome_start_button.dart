import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/core/theme/app_durations.dart';

class WelcomeStartButton extends StatelessWidget {
  final VoidCallback onPressed;
  const WelcomeStartButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        // سرعة الانميشن اللوني عند الضغط
        animationDuration: AppDurations.button,

        // 1. التحكم بلون الخلفية
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.pressed)) {
            return AppColors.royalBluePressed; // عند الضغط
          }
          return AppColors.primaryTurquoise; // في الحالة العادية فيروزي
        }),

        // 2. إلغاء تأثير الـ Splash الافتراضي الذي يغطي لون النص أثناء الضغط
        overlayColor: WidgetStateProperty.all(Colors.transparent),

        // 2. التحكم بلون النص
        foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.pressed)) {
            return AppColors.lightWhite; // عند الضغط
          }
          return AppColors.darkNavy; // في الحالة العادية
        }),
      ),
      onPressed: onPressed,
      child: Builder(
        builder: (context) {
          final textColor = DefaultTextStyle.of(context).style.color;
          return Text(
            "Get Started",
            style: Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(color: textColor),
          );
        },
      ),
    );
  }
}
