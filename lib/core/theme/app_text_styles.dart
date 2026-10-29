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

  static const TextStyle inputLabelStyle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.lightWhite,
  );

  static const TextStyle inputHint = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.lightWhite48,
  );

  static const TextStyle inputText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.lightWhite,
  );

  static const TextStyle formLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.softBlue,
  );

  static const TextStyle buttonLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.slateBlue,
  );

  static const TextStyle bodyRegular14 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 20 / 14, // مطابقة تامة لارتفاع السطر 20 في فيقما
    color: AppColors.lightCyan,
  );

  static const TextStyle displayBold48 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Color(0xFF00E8F8),
    height: 58 / 48, // لتطبيق Line Height (58) بشكل دقيق
  );

  static const TextStyle customText16 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
    height: 24 / 16, // Line height 24
    color: AppColors.lightWhite, // F0F0F8
  );
}
