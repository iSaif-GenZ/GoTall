import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/horizontal_height_picker.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/input_wrapper.dart';

class ParentsHeightsForm extends StatefulWidget {
  final ValueChanged<bool> onFormChanged;
  const ParentsHeightsForm({super.key, required this.onFormChanged});

  @override
  State<ParentsHeightsForm> createState() => _ParentsHeightsFormState();
}

class _ParentsHeightsFormState extends State<ParentsHeightsForm> {
  bool _isFatherHeightSelected = false;
  bool _isMotherHeightSelected = false;

  int? _selectedFatherHeight;
  int? _selectedMotherHeight;

  void _validateForm() {
    final bool isAllFilled = _isFatherHeightSelected && _isMotherHeightSelected;
    widget.onFormChanged(isAllFilled);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputWrapper(
          label: "Father's Height",
          child: HorizontalHeightPicker(
            onHeightSelected: (int height) {
              setState(() {
                _selectedFatherHeight = height;
                _isFatherHeightSelected = true;
              });
              _validateForm();
            },
          ),
        ),
        const SizedBox(height: 24.0),
        InputWrapper(
          label: "Mother's Height",
          child: HorizontalHeightPicker(
            onHeightSelected: (int height) {
              setState(() {
                _selectedMotherHeight = height;
                _isMotherHeightSelected = true;
              });
              _validateForm();
            },
          ),
        ),
      ],
    );
  }
}
