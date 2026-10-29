import 'dart:ui';
import 'package:flutter/cupertino.dart';

class GlowCircle extends StatelessWidget {
  final Color color;
  final double width;
  final double height;
  final double blur;
  final double alpha;

  const GlowCircle({
    super.key,
    required this.color,
    required this.width,
    required this.height,
    required this.blur,
    required this.alpha,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(
          sigmaX: blur,
          sigmaY: blur,
          tileMode: TileMode.decal,
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withValues(alpha: alpha),
          ),
        ),
      ),
    );
  }
}