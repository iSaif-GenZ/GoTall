import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTextStyles {
  static const String fontFamily = 'PlusJakartaSans';

  // عنوان صفحة الترحب الكبيرة (36pt - SemiBold)
  static const TextStyle welcomeTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 36,
    fontWeight: FontWeight.normal,
    color: AppColors.lightWhite,
  );

  // نصوص الأزرار الرئيسية (16pt - Bold)
  static const TextStyle primaryButtonText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.darkNavy,
  );

  // نصوص عادية عامة للتطبيق
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.lightWhite,
  );
}