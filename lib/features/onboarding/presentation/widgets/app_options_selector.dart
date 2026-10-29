import 'package:flutter/material.dart';
import 'package:go_tall/features/onboarding/presentation/widgets/selectable_option_card.dart';

class AppOptionsSelector extends StatefulWidget {
  final List<String> options;
  final ValueChanged<String>? onOptionSelected;
  final Axis direction; // للتحكم بالمحاذاة (أفقي أو عمودي)

  const AppOptionsSelector({
    super.key,
    required this.options,
    this.onOptionSelected,
    this.direction = Axis.horizontal, // الافتراضي هو أفقي
  });

  @override
  State<AppOptionsSelector> createState() => _AppOptionsSelectorState();
}

class _AppOptionsSelectorState extends State<AppOptionsSelector> {
  String? selectedOption;

  void _selectOption(String option) {
    setState(() {
      selectedOption = option;
    });
    widget.onOptionSelected?.call(option);
  }

  @override
  Widget build(BuildContext context) {
    // بناء قائمة العناصر مع المسافات المناسبة بناءً على الاتجاه
    List<Widget> children = widget.options.asMap().entries.map((entry) {
      final int index = entry.key;
      final String option = entry.value;
      final bool isLast = index == widget.options.length - 1;

      Widget card = SelectableOptionCard(
        label: option,
        isSelected: selectedOption == option,
        onTap: () => _selectOption(option),
      );

      // إذا كان أفقي نعطيه Expanded ونباعد من اليمين
      if (widget.direction == Axis.horizontal) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: isLast ? 0.0 : 16.0),
            child: card,
          ),
        );
      } 
      // إذا كان عمودي نباعد من الأسفل
      else {
        return Padding(
          padding: EdgeInsets.only(bottom: isLast ? 0.0 : 16.0),
          child: card,
        );
      }
    }).toList();

    // إرجاع Row أو Column بناءً على الاتجاه المطلوب
    if (widget.direction == Axis.horizontal) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      );
    }
  }
}