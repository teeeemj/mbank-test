import 'package:flutter/material.dart';
import 'package:mbank_test_calendar/core/constants/app_strings.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';

class CalendarModeIndicator extends StatelessWidget {
  final bool isRangeSelectionMode;
  final DateTime? rangeStart;
  final DateTime? rangeEnd;

  const CalendarModeIndicator({
    super.key,
    required this.isRangeSelectionMode,
    this.rangeStart,
    this.rangeEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      color: context.theme.scaffoldBackgroundColor,
      child: Text(
        isRangeSelectionMode
            ? rangeStart != null && rangeEnd != null
                ? AppStrings.rangeMode
                : rangeStart != null
                ? AppStrings.selectSecondDate
                : AppStrings.selectFirstDate
            : AppStrings.oneDateMode,
        textAlign: TextAlign.center,
        style: context.textTheme.bodyMedium?.copyWith(
          color: context.theme.primaryColor,
        ),
      ),
    );
  }
}
