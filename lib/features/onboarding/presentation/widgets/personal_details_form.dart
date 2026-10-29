import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_date_picker_input.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_options_selector.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_text_input.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/input_wrapper.dart';

class PersonalDetailsform extends StatefulWidget {
  final ValueChanged<bool> onFormChanged;
  const PersonalDetailsform({super.key, required this.onFormChanged});

  @override
  State<PersonalDetailsform> createState() => _PersonalDetailsformState();
}

class _PersonalDetailsformState extends State<PersonalDetailsform> {
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
          child: AppOptionsSelector(
            options: const ["Female", "Male"],
            onOptionSelected: (gender) {
              // استخدام الاسم الجديد للدالة
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
