import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/core/types/calendar_types.dart';
import 'package:mbank_test_calendar/presentation/blocs/calendar_event_bloc/calendar_event_bloc.dart';
import 'package:mbank_test_calendar/presentation/cubits/calendar_selection_cubit.dart';

class CalendarEventHandler {
  CalendarEventHandler._();

  static void onDaySelected(
    DateTime selectedDay,
    DateTime focusedDay,
    BuildContext context, {
    DateSelectedCallback? onDateSelected,
  }) {
    final cubit = BlocProvider.of<CalendarSelectionCubit>(context);
    cubit.selectDate(selectedDay);

    onDateSelected?.call(selectedDay);

    BlocProvider.of<CalendarEventBloc>(
      context,
    ).add(CalendarEventEvent.getEvents(date: selectedDay));
  }

  static void onRangeSelected(
    DateTime? start,
    DateTime? end,
    DateTime focusedDay,
    BuildContext context, {
    DateRangeSelectedCallback? onRangeSelected,
  }) {
    if (start == null) {
      return;
    }

    final cubit = BlocProvider.of<CalendarSelectionCubit>(context);
    final currentState = cubit.state;

    if (currentState.selectedRange == null ||
        currentState.selectedRange!.end != null) {
      cubit.selectRange(start, null);

      BlocProvider.of<CalendarEventBloc>(
        context,
      ).add(CalendarEventEvent.getEvents(date: start));
    } else {
      final rangeStart = currentState.selectedRange!.start;

      final actualStart = start.isBefore(rangeStart) ? start : rangeStart;
      final actualEnd = start.isBefore(rangeStart) ? rangeStart : start;

      cubit.selectRange(actualStart, actualEnd);

      final range = DateRange(start: actualStart, end: actualEnd);

      onRangeSelected?.call(range);

      BlocProvider.of<CalendarEventBloc>(
        context,
      ).add(CalendarEventEvent.getRangeSelectedEvents(actualStart, actualEnd));
    }
  }

  static void onPageChanged(DateTime focusedDay, BuildContext context) {
    final cubit = BlocProvider.of<CalendarSelectionCubit>(context);
    cubit.changeFocusedDate(focusedDay);
  }
}
