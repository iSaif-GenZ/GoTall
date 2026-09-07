import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (Navigator.canPop(context)) {
          Navigator.maybePop(context);
        }
      },
      behavior: HitTestBehavior.opaque, // يضمن استجابة منطقة الأيقونة (24x24) للضغط
      child: const SizedBox(
        width: 24,
        height: 24,
        child: Icon(
          Icons.arrow_back,
          size: 24,
          color: AppColors.lightWhite,
        ),
      ),
    );
  }
}