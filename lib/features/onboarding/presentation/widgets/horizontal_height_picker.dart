import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';

class HorizontalHeightPicker extends StatefulWidget {
  final ValueChanged<int> onHeightSelected;

  const HorizontalHeightPicker({super.key, required this.onHeightSelected});

  @override
  State<HorizontalHeightPicker> createState() => _HorizontalHeightPickerState();
}

class _HorizontalHeightPickerState extends State<HorizontalHeightPicker> {
  final List<int> _heights = List.generate(121, (index) => 100 + index);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // قللنا الارتفاع لأن البكرة أصبحت أفقية
      child: RotatedBox(
        quarterTurns: 3, // تدوير البكرة بأكملها لتصبح أفقية
        child: CupertinoPicker(
          itemExtent: 90.0, // هذا الرقم يمثل عرض كل عنصر الآن بدلاً من ارتفاعه
          magnification: 1.2,
          useMagnifier: true,
          onSelectedItemChanged: (int index) {
            widget.onHeightSelected(_heights[index]);
          },
          children: _heights.map((height) {
            return RotatedBox(
              quarterTurns:
                  1, // تدوير النص بالاتجاه المعاكس ليبقى معتدلاً ومقروءاً
              child: Center(
                child: Text(
                  '$height cm',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: AppColors.lightWhite,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
