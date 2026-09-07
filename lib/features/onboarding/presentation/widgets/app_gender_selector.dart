import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/selectable_option_card.dart';

class AppGenderSelector extends StatefulWidget {
  final ValueChanged<String>? onGenderSelected;
  const AppGenderSelector({super.key, this.onGenderSelected});

  @override
  State<AppGenderSelector> createState() => _AppGenderSelectorState();
}

class _AppGenderSelectorState extends State<AppGenderSelector> {
  String? selectedOption;

  void _selectOption(String option) {
    setState(() {
      selectedOption = option;
    });
    widget.onGenderSelected?.call(option);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: SelectableOptionCard(
            label: "Female",
            isSelected: selectedOption == "Female",
            onTap: () => _selectOption("Female"),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: SelectableOptionCard(
            label: "Male",
            isSelected: selectedOption == "Male",
            onTap: () => _selectOption("Male"),
          ),
        ),
      ],
    );
  }
}
