import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/core/types/calendar_types.dart';
import 'package:mbank_test_calendar/presentation/cubits/calendar_selection_cubit.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_day_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_event_handler.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_utils.dart';

class CalendarDayBuilders {
  CalendarDayBuilders._();

  static Widget? buildDefaultDay(
    BuildContext context,
    DateTime day,
    DateTime focusedDay,
    CalendarSelectionMode selectionMode, {
    DateSelectedCallback? onDateSelected,
    DateRangeSelectedCallback? onRangeSelected,
  }) {
    final cubit = BlocProvider.of<CalendarSelectionCubit>(context);
    final isInRange = CalendarUtils.isDateInRange(day, cubit.state);

    return CalendarDayWidget(
      date: day,
      isInRange: isInRange,
      onTap:
          () =>
              selectionMode.isSingle
                  ? CalendarEventHandler.onDaySelected(
                    day,
                    focusedDay,
                    context,
                    onDateSelected: onDateSelected,
                  )
                  : CalendarEventHandler.onRangeSelected(
                    day,
                    null,
                    focusedDay,
                    context,
                    onRangeSelected: onRangeSelected,
                  ),
    );
  }

  static Widget? buildSelectedDay(
    BuildContext context,
    DateTime day,
    DateTime focusedDay,
    CalendarSelectionMode selectionMode, {
    DateSelectedCallback? onDateSelected,
    DateRangeSelectedCallback? onRangeSelected,
  }) {
    final cubit = BlocProvider.of<CalendarSelectionCubit>(context);
    final state = cubit.state;

    return CalendarDayWidget(
      date: day,
      isSelected: true,
      isToday: CalendarUtils.isToday(day),
      isRangeStart: CalendarUtils.isRangeStart(day, state),
      isRangeEnd: CalendarUtils.isRangeEnd(day, state),
      onTap:
          () =>
              selectionMode.isSingle
                  ? CalendarEventHandler.onDaySelected(
                    day,
                    focusedDay,
                    context,
                    onDateSelected: onDateSelected,
                  )
                  : CalendarEventHandler.onRangeSelected(
                    day,
                    null,
                    focusedDay,
                    context,
                    onRangeSelected: onRangeSelected,
                  ),
    );
  }

  static Widget? buildTodayDay(
    BuildContext context,
    DateTime day,
    DateTime focusedDay,
    CalendarSelectionMode selectionMode, {
    DateSelectedCallback? onDateSelected,
    DateRangeSelectedCallback? onRangeSelected,
  }) {
    final cubit = BlocProvider.of<CalendarSelectionCubit>(context);
    final state = cubit.state;

    return CalendarDayWidget(
      date: day,
      isToday: true,
      isSelected: cubit.isDateSelected(day),
      isInRange: CalendarUtils.isDateInRange(day, state),
      isRangeStart: CalendarUtils.isRangeStart(day, state),
      isRangeEnd: CalendarUtils.isRangeEnd(day, state),
      onTap:
          () =>
              selectionMode.isSingle
                  ? CalendarEventHandler.onDaySelected(
                    day,
                    focusedDay,
                    context,
                    onDateSelected: onDateSelected,
                  )
                  : CalendarEventHandler.onRangeSelected(
                    day,
                    null,
                    focusedDay,
                    context,
                    onRangeSelected: onRangeSelected,
                  ),
    );
  }

  static Widget? buildRangeStartDay(
    BuildContext context,
    DateTime day,
    DateTime focusedDay, {
    DateRangeSelectedCallback? onRangeSelected,
  }) {
    return CalendarDayWidget(
      date: day,
      isRangeStart: true,
      isToday: CalendarUtils.isToday(day),
      onTap:
          () => CalendarEventHandler.onRangeSelected(
            day,
            null,
            focusedDay,
            context,
            onRangeSelected: onRangeSelected,
          ),
    );
  }

  static Widget? buildRangeEndDay(
    BuildContext context,
    DateTime day,
    DateTime focusedDay, {
    DateRangeSelectedCallback? onRangeSelected,
  }) {
    return CalendarDayWidget(
      date: day,
      isRangeEnd: true,
      isToday: CalendarUtils.isToday(day),
      onTap:
          () => CalendarEventHandler.onRangeSelected(
            day,
            null,
            focusedDay,
            context,
            onRangeSelected: onRangeSelected,
          ),
    );
  }

  static Widget? buildWithinRangeDay(
    BuildContext context,
    DateTime day,
    DateTime focusedDay, {
    DateRangeSelectedCallback? onRangeSelected,
  }) {
    return CalendarDayWidget(
      date: day,
      isInRange: true,
      isToday: CalendarUtils.isToday(day),
      onTap:
          () => CalendarEventHandler.onRangeSelected(
            day,
            null,
            focusedDay,
            context,
            onRangeSelected: onRangeSelected,
          ),
    );
  }

  static Widget? buildOutsideDay(
    BuildContext context,
    DateTime day,
    DateTime focusedDay,
    CalendarSelectionMode selectionMode, {
    DateSelectedCallback? onDateSelected,
    DateRangeSelectedCallback? onRangeSelected,
  }) {
    final cubit = BlocProvider.of<CalendarSelectionCubit>(context);
    final state = cubit.state;

    return CalendarDayWidget(
      date: day,
      isOutsideMonth: true,
      isInRange: CalendarUtils.isDateInRange(day, state),
      isRangeStart: CalendarUtils.isRangeStart(day, state),
      isRangeEnd: CalendarUtils.isRangeEnd(day, state),
      onTap:
          () =>
              selectionMode.isSingle
                  ? CalendarEventHandler.onDaySelected(
                    day,
                    focusedDay,
                    context,
                    onDateSelected: onDateSelected,
                  )
                  : CalendarEventHandler.onRangeSelected(
                    day,
                    null,
                    focusedDay,
                    context,
                    onRangeSelected: onRangeSelected,
                  ),
    );
  }
}
