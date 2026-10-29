import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';

class HeightPicker extends StatefulWidget {
  final ValueChanged<int> onHeightSelected;

  const HeightPicker({super.key, required this.onHeightSelected});

  @override
  State<HeightPicker> createState() => _HeightPickerState();
}

class _HeightPickerState extends State<HeightPicker> {
  final List<int> _heights = List.generate(121, (index) => 100 + index);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 256,
      child: CupertinoPicker(
        itemExtent: 50.0,
        magnification: 1.2,
        useMagnifier: true,
        onSelectedItemChanged: (int index) {
          widget.onHeightSelected(_heights[index]);
        },
        children: _heights.map((height) {
          return Center(
            child: Text(
              '$height cm',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: AppColors.lightWhite,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
