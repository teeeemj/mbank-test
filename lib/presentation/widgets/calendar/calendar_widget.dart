import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  final DateTime focusedDay;
  final DateTime selectedDay;
  final DateTime? rangeStart;
  final DateTime? rangeEnd;
  final RangeSelectionMode rangeSelectionMode;
  final Function(DateTime, DateTime)? onDaySelected;
  final Function(DateTime?, DateTime?, DateTime)? onRangeSelected;

  const CalendarWidget({
    super.key,
    required this.focusedDay,
    required this.selectedDay,
    required this.rangeStart,
    required this.rangeEnd,
    required this.rangeSelectionMode,
    this.onDaySelected,
    this.onRangeSelected,
  });

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TableCalendar(
        availableGestures: AvailableGestures.horizontalSwipe,
        calendarFormat: CalendarFormat.month,
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: widget.focusedDay,
        headerStyle: const HeaderStyle(formatButtonVisible: false),
        selectedDayPredicate: (day) => isSameDay(widget.selectedDay, day),
        rangeStartDay: widget.rangeStart,
        rangeEndDay: widget.rangeEnd,
        rangeSelectionMode: widget.rangeSelectionMode,
        onDaySelected: widget.onDaySelected,
        onRangeSelected: widget.onRangeSelected,
      ),
    );
  }
}
