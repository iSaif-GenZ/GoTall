import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/app_weight_input.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/height_picker.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/input_wrapper.dart';

class BodyMeasurementsForm extends StatefulWidget {
  final ValueChanged<bool> onFormChanged;
  const BodyMeasurementsForm({super.key, required this.onFormChanged});

  @override
  State<BodyMeasurementsForm> createState() => _BodyMeasurementsFormState();
}

class _BodyMeasurementsFormState extends State<BodyMeasurementsForm> {
  bool _isHeightSelected = false;
  bool _isWeightFilled = false;
  int? _selectedHeight;

  void _validateForm() {
    final bool isAllFilled = _isHeightSelected && _isWeightFilled;
    widget.onFormChanged(isAllFilled);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWrapper(
          alignment: CrossAxisAlignment.center,
          label: "Height",
          child: HeightPicker(
            onHeightSelected: (int height) {
              setState(() {
                _selectedHeight = height;
                _isHeightSelected = true;
              });
              _validateForm();
            },
          ),
        ),
        const SizedBox(height: 24.0),
        InputWrapper(
          label: "Weight",
          child: AppWeightInput(
            onChanged: (value) {
              setState(() {
                _isWeightFilled = value.trim().isNotEmpty;
              });
              _validateForm();
            },
          ),
        ),
      ],
    );
  }
}
