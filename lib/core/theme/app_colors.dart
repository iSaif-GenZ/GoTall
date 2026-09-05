import 'package:flutter/material.dart';

abstract class AppColors {

  static const Color royalBluePressed = Color(0xFF1E56C8);
  // الألوان المستخرجة مباشرة من الكود والصور
  static const Color primaryTurquoise = Color(
    0xFF00E8F8,
  ); // اللون الأساسي للأزرار
  static const Color darkNavy = Color(
    0xFF051232,
  ); // لون الخلفية الرئيسي والظلال
  static const Color deepRoyalBlue = Color(
    0xFF0946A9,
  ); // أزرق ثانوي (GlowCircle)
  static const Color lightWhite = Color(0xFFF0F0F8); // لون النصوص والإضاءات
  static const Color lightWhite72 = Color(0xB8FFFFFF);

  static const Color slateGray = Color(0xFF8F9CAE);

  // درجات الأبيض المائل للرمادي (F0F0F8) بحسب نسبة الشفافية
  static const Color lightWhite24 = Color(0x3DF0F0F8); // شفافية 24% (للفواضل)
  static const Color lightWhite30 = Color(0x4DF0F0F8); // شفافية 30% (للشكل غير النشط)

  // ألوان إضافية من جدول الهوية البصرية (الصور)
  static const Color growthGreen = Color(0xFF08E97C); // أخصر النمو والتقدم
  static const Color brightLime = Color(0xFF7BF430); // إبراز قوي
  static const Color accentOrange = Color(0xFFF0B60C); // لمسات برتقالية/صفراء

  // ألوان التوهج والظلال المستخرجة من الصورة الثانية
  static const Color cyanGlow = Color(0xFF00D2FF);
  static const Color darkBlueOutline = Color(0xFF022B7A);
  static const Color limeNeon = Color(0xFF17EA5D);
  static const Color amberLine = Color(0xFFFFAE00);
  static const Color peachSkin = Color(0xFFFFB482);
}
