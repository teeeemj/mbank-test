import 'package:flutter/material.dart';

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
      title: const Text('Календарь', style: TextStyle(fontSize: 18)),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: SegmentedButton<bool>(
            segments: const [
              ButtonSegment<bool>(
                value: false,
                label: Text('Одна дата'),
                icon: Icon(Icons.calendar_today),
              ),
              ButtonSegment<bool>(
                value: true,
                label: Text('Диапазон'),
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
