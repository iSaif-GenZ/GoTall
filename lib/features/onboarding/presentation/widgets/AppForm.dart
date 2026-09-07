import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_date_picker_input.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_gender_selector.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_text_input.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/input_wrapper.dart';

class Appform extends StatefulWidget {
  final ValueChanged<bool> onFormChanged;
  const Appform({super.key, required this.onFormChanged});

  @override
  State<Appform> createState() => _AppformState();
}

class _AppformState extends State<Appform> {
  bool _isNameFilled = false;
  bool _isGenderSelected = false;
  bool _isDateSelected = false;

  void _validateForm() {
    final bool isAllFilled =
        _isNameFilled && _isGenderSelected && _isDateSelected;
    widget.onFormChanged(isAllFilled);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWrapper(
          label: "Name",
          child: AppTextInput(
            hintText: "e.g. Alex Morgan",
            onChanged: (value) {
              _isNameFilled = value.trim().isNotEmpty;
              _validateForm();
            },
          ),
        ),
        SizedBox(height: 16),
        InputWrapper(
          label: "Gender",
          child: AppGenderSelector(
            onGenderSelected: (gender) {
              _isGenderSelected = gender != null;
              _validateForm();
            },
          ),
        ),
        SizedBox(height: 16),
        InputWrapper(
          label: "Date of Birth",
          child: AppDatePickerInput(
            onDateSelected: (DateTime value) {
              _isDateSelected = true;
              _validateForm();
            },
          ),
        ),
      ],
    );
  }
}
