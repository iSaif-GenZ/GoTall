import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_tall/core/theme/app_colors.dart';

class HeightProgressContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.deepNavy,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "165 cm",
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(color: AppColors.lightWhite),
              ),
              Text(
                "178 cm",
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(color: AppColors.lightWhite),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // الدائرة اليسرى
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F8),
                  shape: BoxShape.circle,
                ),
              ),
              // الخط (البوري)
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 2,
                  color: const Color(0xFFF0F0F8),
                ),
              ),
              // الدائرة اليمنى
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F8),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
