import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/core/constants/app_dimensions.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';
import 'package:mbank_test_calendar/core/types/calendar_types.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';
import 'package:mbank_test_calendar/presentation/cubits/calendar_selection_cubit.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_day_builders.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_event_handler.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_utils.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({
    super.key,
    required this.selectionMode,
    this.onDateSelected,
    this.onRangeSelected,
  });

  final CalendarSelectionMode selectionMode;
  final DateSelectedCallback? onDateSelected;
  final DateRangeSelectedCallback? onRangeSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarSelectionCubit, CalendarSelectionState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: context.theme.scaffoldBackgroundColor,
          ),
          child: RepaintBoundary(
            child: _CalendarView(
              state: state,
              selectionMode: selectionMode,
              onDateSelected: onDateSelected,
              onRangeSelected: onRangeSelected,
            ),
          ),
        );
      },
    );
  }
}

class _CalendarView extends StatelessWidget {
  const _CalendarView({
    required this.state,
    required this.selectionMode,
    this.onDateSelected,
    this.onRangeSelected,
  });

  final CalendarSelectionState state;
  final CalendarSelectionMode selectionMode;
  final DateSelectedCallback? onDateSelected;
  final DateRangeSelectedCallback? onRangeSelected;

  @override
  Widget build(BuildContext context) {
    return TableCalendar<Event>(
      daysOfWeekHeight: AppDimensions.calendarDayHeight,
      availableGestures: AvailableGestures.horizontalSwipe,
      calendarFormat: CalendarFormat.month,
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: state.focusedDate,

      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),

      selectedDayPredicate: (day) => CalendarUtils.isSelectedDay(day, context),
      rangeStartDay: state.selectedRange?.start,
      rangeEndDay: state.selectedRange?.end,

      rangeSelectionMode:
          selectionMode.isRange
              ? RangeSelectionMode.toggledOn
              : RangeSelectionMode.toggledOff,

      onDaySelected:
          selectionMode.isSingle
              ? (selectedDay, focusedDay) => CalendarEventHandler.onDaySelected(
                selectedDay,
                focusedDay,
                context,
                onDateSelected: onDateSelected,
              )
              : null,
      onRangeSelected:
          selectionMode.isRange
              ? (start, end, focusedDay) =>
                  CalendarEventHandler.onRangeSelected(
                    start,
                    end,
                    focusedDay,
                    context,
                    onRangeSelected: onRangeSelected,
                  )
              : null,
      onPageChanged:
          (focusedDay) =>
              CalendarEventHandler.onPageChanged(focusedDay, context),

      calendarBuilders: CalendarBuilders<Event>(
        defaultBuilder:
            (context, day, focusedDay) => CalendarDayBuilders.buildDefaultDay(
              context,
              day,
              focusedDay,
              selectionMode,
              onDateSelected: onDateSelected,
              onRangeSelected: onRangeSelected,
            ),
        selectedBuilder:
            (context, day, focusedDay) => CalendarDayBuilders.buildSelectedDay(
              context,
              day,
              focusedDay,
              selectionMode,
              onDateSelected: onDateSelected,
              onRangeSelected: onRangeSelected,
            ),
        todayBuilder:
            (context, day, focusedDay) => CalendarDayBuilders.buildTodayDay(
              context,
              day,
              focusedDay,
              selectionMode,
              onDateSelected: onDateSelected,
              onRangeSelected: onRangeSelected,
            ),
        rangeStartBuilder:
            (context, day, focusedDay) =>
                CalendarDayBuilders.buildRangeStartDay(
                  context,
                  day,
                  focusedDay,
                  onRangeSelected: onRangeSelected,
                ),
        rangeEndBuilder:
            (context, day, focusedDay) => CalendarDayBuilders.buildRangeEndDay(
              context,
              day,
              focusedDay,
              onRangeSelected: onRangeSelected,
            ),
        withinRangeBuilder:
            (context, day, focusedDay) =>
                CalendarDayBuilders.buildWithinRangeDay(
                  context,
                  day,
                  focusedDay,
                  onRangeSelected: onRangeSelected,
                ),
        outsideBuilder:
            (context, day, focusedDay) => CalendarDayBuilders.buildOutsideDay(
              context,
              day,
              focusedDay,
              selectionMode,
              onDateSelected: onDateSelected,
              onRangeSelected: onRangeSelected,
            ),
      ),
    );
  }
}
