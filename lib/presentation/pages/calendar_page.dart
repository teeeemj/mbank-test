import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/core/constants/app_dimensions.dart';
import 'package:mbank_test_calendar/core/constants/app_strings.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';
import 'package:mbank_test_calendar/presentation/blocs/calendar_event_bloc/calendar_event_bloc.dart';
import 'package:mbank_test_calendar/presentation/cubits/calendar_selection_cubit.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_appbar_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_mode_indicator.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/events_list_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/shimmer_loading_widget.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CalendarSelectionCubit())],
      child: const CalendarPageView(),
    );
  }
}

class CalendarPageView extends StatefulWidget {
  const CalendarPageView({super.key});

  @override
  State<CalendarPageView> createState() => _CalendarPageViewState();
}

class _CalendarPageViewState extends State<CalendarPageView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CalendarEventBloc>().add(
        CalendarEventEvent.getEvents(date: DateTime.now()),
      );

      context.read<CalendarSelectionCubit>().selectDate(DateTime.now());
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final calendarHeight =
        MediaQuery.of(context).size.height * AppDimensions.calendarHeightRatio;

    return Scaffold(
      appBar: const CalendarAppBarWidget(),
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: calendarHeight,
              backgroundColor: context.theme.scaffoldBackgroundColor,
              flexibleSpace: FlexibleSpaceBar(
                background:
                    BlocBuilder<CalendarSelectionCubit, CalendarSelectionState>(
                      builder: (context, state) {
                        return CalendarWidget(
                          selectionMode: state.selectionMode,
                        );
                      },
                    ),
              ),
            ),
            const SliverCalendarModeIndicator(),
            const SliverToBoxAdapter(
              child: SizedBox(height: AppDimensions.spacing16),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spacing16,
              ),
              sliver: BlocSelector<
                CalendarEventBloc,
                CalendarEventState,
                List<Event>
              >(
                selector:
                    (state) => state.when(
                      initial: () => <Event>[],
                      loading: () => <Event>[],
                      fetched: (events) => events,
                      error: (_) => <Event>[],
                    ),
                builder: (context, events) {
                  return BlocBuilder<CalendarEventBloc, CalendarEventState>(
                    builder: (context, state) {
                      return state.when(
                        initial:
                            () => const SliverToBoxAdapter(
                              child: Center(
                                child: Text(AppStrings.selectDateRange),
                              ),
                            ),
                        loading:
                            () => const SliverToBoxAdapter(
                              child: Center(child: ShimmerLoadingWidget()),
                            ),
                        fetched: (events) => EventsListWidget(events: events),
                        error:
                            (message) => SliverToBoxAdapter(
                              child: Center(child: Text(message)),
                            ),
                      );
                    },
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height:
                    MediaQuery.of(context).padding.bottom +
                    AppDimensions.spacing80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliverCalendarModeIndicator extends StatelessWidget {
  const SliverCalendarModeIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<CalendarSelectionCubit, CalendarSelectionState>(
        builder: (context, state) {
          return CalendarModeIndicator(
            isRangeSelectionMode: state.selectionMode.isRange,
            rangeStart: state.selectedRange?.start,
            rangeEnd: state.selectedRange?.end,
          );
        },
      ),
    );
  }
}
