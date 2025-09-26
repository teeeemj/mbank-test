import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/core/constants/app_dimensions.dart';
import 'package:mbank_test_calendar/core/constants/app_strings.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';
import 'package:mbank_test_calendar/core/types/calendar_types.dart';
import 'package:mbank_test_calendar/presentation/cubits/calendar_selection_cubit.dart';

class CalendarAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CalendarAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.secondaryHeaderColor,
      centerTitle: false,
      title: Text(AppStrings.calendar, style: context.textTheme.titleMedium),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: AppDimensions.spacing16),
          child: BlocBuilder<CalendarSelectionCubit, CalendarSelectionState>(
            builder: (context, state) {
              return SegmentedButton<CalendarSelectionMode>(
                segments: const [
                  ButtonSegment<CalendarSelectionMode>(
                    value: CalendarSelectionMode.single,
                    label: Text(AppStrings.oneDate),
                    icon: Icon(Icons.calendar_today),
                  ),
                  ButtonSegment<CalendarSelectionMode>(
                    value: CalendarSelectionMode.range,
                    label: Text(AppStrings.range),
                    icon: Icon(Icons.date_range),
                  ),
                ],
                selected: {state.selectionMode},
                onSelectionChanged: (Set<CalendarSelectionMode> selected) {
                  if (selected.isNotEmpty) {
                    context.read<CalendarSelectionCubit>().changeMode(
                      selected.first,
                    );
                  }
                },
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
