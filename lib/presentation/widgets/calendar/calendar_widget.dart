import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';
import 'package:mbank_test_calendar/presentation/blocs/calendar_event_bloc/calendar_event_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  final bool isRangeSelectionMode;
  final Function(bool) onSelectionModeChanged;

  const CalendarWidget({
    super.key,
    required this.isRangeSelectionMode,
    required this.onSelectionModeChanged,
  });

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();
    context.read<CalendarEventBloc>().add(
      CalendarEventEvent.getEvents(date: _selectedDay),
    );
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (_selectedDay == selectedDay && _focusedDay == focusedDay) {
      return;
    }

    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
      _rangeStart = null;
      _rangeEnd = null;
    });

    context.read<CalendarEventBloc>().add(
      CalendarEventEvent.getEvents(date: selectedDay),
    );
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = focusedDay;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
    });

    if (start != null && end != null) {
      context.read<CalendarEventBloc>().add(
        CalendarEventEvent.getRangeSelectedEvents(start, end),
      );
    } else if (start != null) {
      context.read<CalendarEventBloc>().add(
        CalendarEventEvent.getEvents(date: start),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: context.theme.scaffoldBackgroundColor),
      child: RepaintBoundary(
        child: TableCalendar(
          daysOfWeekHeight: 24,
          availableGestures: AvailableGestures.horizontalSwipe,
          calendarFormat: CalendarFormat.month,
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: _focusedDay,
          headerStyle: const HeaderStyle(formatButtonVisible: false),
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          rangeStartDay: _rangeStart,
          rangeEndDay: _rangeEnd,
          rangeSelectionMode:
              widget.isRangeSelectionMode
                  ? RangeSelectionMode.toggledOn
                  : RangeSelectionMode.toggledOff,
          onDaySelected: widget.isRangeSelectionMode ? null : _onDaySelected,
          onRangeSelected:
              widget.isRangeSelectionMode ? _onRangeSelected : null,
        ),
      ),
    );
  }
}
