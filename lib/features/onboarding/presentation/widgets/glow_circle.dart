import 'dart:ui';

import 'package:flutter/cupertino.dart';

class GlowCircle extends StatelessWidget {
  final Color color;
  const GlowCircle({super.key, this.color = const Color(0xFF0946A9)});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(
          sigmaX: 140,
          sigmaY: 140,
          tileMode: TileMode.decal,
        ),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withValues(alpha: 0.4),
          ),
        ),
      ),
    );
  }
}
