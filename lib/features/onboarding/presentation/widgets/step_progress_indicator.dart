import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';

class StepProgressIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const StepProgressIndicator({
    super.key,
    required this.currentStep,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // إنشاء العناصر (دوائر + خطوط) بناءً على عدد الخطوات
      children: List.generate(totalSteps * 2 - 1, (index) {
        // في حال أن الرقم كان زوجي (نرسم دائرة)
        if (index.isEven) {
          // معرفة رقم الدائرة الحالي (0، 1، 2...)
          final stepIndex = index ~/ 2;

          // هل وصلنا لهذه الدائرة أو تجاوزناها؟ (لتحديد لونها)
          final isActive = stepIndex <= (currentStep - 1);

          // رسم الدائرة
          return Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: isActive
                  ? AppColors.primaryTurquoise
                  : AppColors.lightWhite30,
              shape: BoxShape.circle,
            ),
          );
        }
        // في حالة أن الرقم كان فردي (نرسم خطاً فاصلاً)
        else {
          // معرفة رقم الخط الحالي
          final lineIndex = index ~/ 2;

          // هل عبرنا هذا الخط؟ (لتحديد لونه)
          final isLineActive = lineIndex < (currentStep - 1);

          // رسم الخط وجعله يتمدد لملء الفراغ بين الدوائر
          return Expanded(
            child: Container(
              height: 2,
              color: isLineActive
                  ? AppColors.primaryTurquoise
                  : AppColors.lightWhite24,
            ),
          );
        }
      }),
    );
  }
}
