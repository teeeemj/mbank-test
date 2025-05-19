import 'package:flutter/material.dart';
import 'package:mbank_test_calendar/core/constants/app_strings.dart';

class CalendarAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isRangeSelectionMode;
  final ValueChanged<Set<bool>> onSelectionChanged;

  const CalendarAppBarWidget({
    super.key,
    required this.isRangeSelectionMode,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(AppStrings.calendar, style: TextStyle(fontSize: 18)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: SegmentedButton<bool>(
            segments: const [
              ButtonSegment<bool>(
                value: false,
                label: Text(AppStrings.oneDate),
                icon: Icon(Icons.calendar_today),
              ),
              ButtonSegment<bool>(
                value: true,
                label: Text(AppStrings.range),
                icon: Icon(Icons.date_range),
              ),
            ],
            selected: {isRangeSelectionMode},
            onSelectionChanged: onSelectionChanged,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
