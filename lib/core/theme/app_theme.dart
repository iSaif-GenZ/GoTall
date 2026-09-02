import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

abstract class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: AppTextStyles.fontFamily,
      scaffoldBackgroundColor: AppColors.darkNavy,
      
      // نظام الألوان الداكن المعتمد
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryTurquoise,
        secondary: AppColors.deepRoyalBlue,
        surface: AppColors.darkNavy,
        onPrimary: AppColors.darkNavy,
        onSurface: AppColors.lightWhite,
      ),

      // ثيم الأزرار الرئيسية الموحد (ElevatedButton)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryTurquoise,
          foregroundColor: AppColors.darkNavy,
          elevation: 0,
          minimumSize: const Size(double.infinity, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100), // تصميم حواف دائرية أنيقة
          ),
          textStyle: AppTextStyles.primaryButtonText,
        ),
      ),

      // ثيم النصوص العام
      textTheme: const TextTheme(
        displayLarge: AppTextStyles.welcomeTitle,
        bodyMedium: AppTextStyles.bodyMedium,
      ),
    );
  }
}