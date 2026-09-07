import 'package:flutter/material.dart';
import 'package:go_tall/core/theme/app_colors.dart';

class AppTextInput extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const AppTextInput({
    super.key, 
    required this.hintText,
    this.onChanged,
    this.controller,
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.midnightNavy,
          // isDense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: AppColors.darkBlueOutline,
              width: 1.0,
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: AppColors.primaryTurquoise,
              width: 2.0,
            )
          )
        ),
        onTapOutside: (PointerDownEvent) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }
}
