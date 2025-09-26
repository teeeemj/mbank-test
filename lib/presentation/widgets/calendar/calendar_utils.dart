import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/presentation/cubits/calendar_selection_cubit.dart';

class CalendarUtils {
  CalendarUtils._();

  static bool isSelectedDay(DateTime day, BuildContext context) {
    final cubit = BlocProvider.of<CalendarSelectionCubit>(context);
    return cubit.isDateSelected(day);
  }

  static bool isDateInRange(DateTime day, CalendarSelectionState state) {
    if (state.selectedRange == null) {
      return false;
    }

    final range = state.selectedRange!;
    if (range.end == null) {
      return false;
    }

    return range.contains(day) &&
        !isSameDay(day, range.start) &&
        !isSameDay(day, range.end!);
  }

  static bool isRangeStart(DateTime day, CalendarSelectionState state) {
    if (state.selectedRange == null) {
      return false;
    }
    return isSameDay(day, state.selectedRange!.start);
  }

  static bool isRangeEnd(DateTime day, CalendarSelectionState state) {
    if (state.selectedRange?.end == null) {
      return false;
    }
    return isSameDay(day, state.selectedRange!.end!);
  }

  static bool isToday(DateTime day) {
    final today = DateTime.now();
    return day.year == today.year &&
        day.month == today.month &&
        day.day == today.day;
  }

  static bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}
