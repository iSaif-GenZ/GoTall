import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_options_selector.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/input_wrapper.dart';

class LifestyleForm extends StatefulWidget {
  final ValueChanged<bool> onFormChanged;
  const LifestyleForm({super.key, required this.onFormChanged});

  @override
  State<LifestyleForm> createState() => _LifestyleFormState();
}

class _LifestyleFormState extends State<LifestyleForm> {
  bool _isSleepSelected = false;
  bool _isExerciseSelected = false;

  void _validateForm() {
    final bool isAllFilled = _isSleepSelected && _isExerciseSelected;
    widget.onFormChanged(isAllFilled);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWrapper(
          label: "Daily Sleep",
          child: AppOptionsSelector(
            options: const ["< 6h", "6-8h"],
            direction: Axis.horizontal,

            onOptionSelected: (value) {
              setState(() {
                _isSleepSelected = true;
              });
              _validateForm();
            },
          ),
        ),
        const SizedBox(height: 24.0),
        InputWrapper(
          label: "Daily Exercise",
          child: AppOptionsSelector(
            options: const ["< 30m", "30-60m", "1h+"],
            direction: Axis.vertical,
            onOptionSelected: (value) {
              setState(() {
                _isExerciseSelected = true;
              });
              _validateForm();
            },
          ),
        ),
      ],
    );
  }
}
