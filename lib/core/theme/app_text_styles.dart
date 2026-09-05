import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTextStyles {
  static const String fontFamily = 'PlusJakartaSans';

  static const TextStyle welcomeTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 36,
    fontWeight: FontWeight.normal,
    color: AppColors.lightWhite,
  );

  static const TextStyle appBarTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle appBarCounter = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.lightWhite72,
  );

  static const TextStyle pageTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: AppColors.lightWhite, 
    height: 1.47,
  );

  static const TextStyle pageDescription = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14, 
    fontWeight: FontWeight.w400,
    color: AppColors.slateGray,
    height: 1.47,
  );

  // نصوص الأزرار الرئيسية (16pt - Bold)
  static const TextStyle primaryButtonText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.darkNavy,
  );

  // // نصوص عادية عامة للتطبيق
  // static const TextStyle bodyMedium = TextStyle(
  //   fontFamily: fontFamily,
  //   fontSize: 14,
  //   fontWeight: FontWeight.normal,
  //   color: AppColors.lightWhite,
  // );
}
