import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';

class AppWeightInput extends StatefulWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  const AppWeightInput({super.key, this.controller, this.onChanged});

  @override
  State<AppWeightInput> createState() => _AppWeightInputState();
}

class _AppWeightInputState extends State<AppWeightInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: TextFormField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: "e.g. 70",
          suffixText: "kg",
          suffixStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.normal,
            color: AppColors.slateGray60,
          ),
          filled: true,
          fillColor: AppColors.midnightNavy,
          // isDense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: AppColors.darkBlueOutline,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: AppColors.primaryTurquoise,
              width: 2.0,
            ),
          ),
        ),
        onTapOutside: (PointerDownEvent) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }
}
