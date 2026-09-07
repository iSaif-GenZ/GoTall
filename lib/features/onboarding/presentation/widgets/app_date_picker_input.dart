import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/core/theme/app_durations.dart';

class AppDatePickerInput extends StatefulWidget {
  final ValueChanged<DateTime>? onDateSelected;
  const AppDatePickerInput({super.key, required this.onDateSelected});

  @override
  State<AppDatePickerInput> createState() => _AppDatePickerInputState();
}

class _AppDatePickerInputState extends State<AppDatePickerInput> {
  bool _isSelected = false;
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    final String displayText = _selectedDate == null
        ? "DD / MM / YYYY"
        : "${_selectedDate!.day.toString().padLeft(2, '0')} / ${_selectedDate!.month.toString().padLeft(2, '0')} / ${_selectedDate!.year}";

    Future<void> _pickDate() async {
      setState(() {
        _isSelected = true;
      });

      final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate ?? DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );

      if (!mounted) return;

      setState(() {
        _isSelected = false;
        if (pickedDate != null ) {
          _selectedDate = pickedDate;
          widget.onDateSelected?.call(pickedDate);
        }
      });
    }

    return InkWell(
      onTap: _pickDate,
      borderRadius: BorderRadius.circular(12),
      child: AnimatedContainer(
        duration: AppDurations.selection,
        width: double.infinity,
        height: 52,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.midnightNavy,

          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: _isSelected
                ? AppColors.primaryTurquoise
                : AppColors.darkBlueOutline,
            width: _isSelected ? 2.0 : 1.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              displayText,
              style: _selectedDate != null
                  ? Theme.of(context).textTheme.bodyLarge
                  : Theme.of(context).inputDecorationTheme.hintStyle,
            ),
            Icon(
              Icons.calendar_today_rounded,
              size: 24,
              color: _isSelected
                  ? AppColors.primaryTurquoise
                  : AppColors.lightWhite72,
            ),
          ],
        ),
      ),
    );
  }
}
