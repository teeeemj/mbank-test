import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mbank_test_calendar/core/constants/app_strings.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';
import 'package:mbank_test_calendar/presentation/blocs/calendar_event_bloc/calendar_event_bloc.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_appbar_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/events_list_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/shimmer_loading_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage>
    with SingleTickerProviderStateMixin {
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  bool _isRangeSelectionMode = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    context.read<CalendarEventBloc>().add(
      CalendarEventEvent.getEvents(date: _selectedDay),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
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

  void _onSelectionModeChanged(bool isRangeSelectionMode) {
    setState(() {
      _isRangeSelectionMode = isRangeSelectionMode;
      _rangeStart = null;
      _rangeEnd = null;
    });

    if (!_isRangeSelectionMode) {
      context.read<CalendarEventBloc>().add(
        CalendarEventEvent.getEvents(date: _selectedDay),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final calendarHeight = MediaQuery.of(context).size.height * 0.45;

    return Scaffold(
      appBar: CalendarAppBarWidget(
        isRangeSelectionMode: _isRangeSelectionMode,
        onSelectionChanged: (value) => _onSelectionModeChanged(value.first),
      ),
      body: SafeArea(
        bottom: false,
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            return false;
          },
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                expandedHeight: calendarHeight,
                floating: true,
                snap: false,
                stretch: true,
                backgroundColor: context.theme.scaffoldBackgroundColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      CalendarWidget(
                        focusedDay: _focusedDay,
                        selectedDay: _selectedDay,
                        rangeStart: _rangeStart,
                        rangeEnd: _rangeEnd,
                        rangeSelectionMode:
                            _isRangeSelectionMode
                                ? RangeSelectionMode.toggledOn
                                : RangeSelectionMode.toggledOff,
                        onDaySelected:
                            _isRangeSelectionMode ? null : _onDaySelected,
                        onRangeSelected:
                            _isRangeSelectionMode
                                ? (start, end, focused) {
                                  if (start != null && end != null) {
                                    setState(() {
                                      _selectedDay = focused;
                                      _focusedDay = focused;
                                      _rangeStart = start;
                                      _rangeEnd = end;
                                    });

                                    context.read<CalendarEventBloc>().add(
                                      CalendarEventEvent.getRangeSelectedEvents(
                                        start,
                                        end,
                                      ),
                                    );
                                  } else if (start != null) {
                                    setState(() {
                                      _selectedDay = focused;
                                      _focusedDay = focused;
                                      _rangeStart = start;
                                      _rangeEnd = null;
                                    });

                                    context.read<CalendarEventBloc>().add(
                                      CalendarEventEvent.getEvents(date: start),
                                    );
                                  }
                                }
                                : null,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 8.0.h,
                            horizontal: 16.0.w,
                          ),
                          color: context.theme.scaffoldBackgroundColor,
                          child: Text(
                            _isRangeSelectionMode
                                ? _rangeStart != null && _rangeEnd != null
                                    ? AppStrings.rangeMode
                                    : _rangeStart != null
                                    ? AppStrings.selectSecondDate
                                    : AppStrings.selectFirstDate
                                : AppStrings.oneDateMode,
                            textAlign: TextAlign.center,
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: context.theme.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 16.h)),

              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                sliver: BlocBuilder<CalendarEventBloc, CalendarEventState>(
                  builder: (context, state) {
                    return state.when(
                      initial:
                          () => SliverToBoxAdapter(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0.h),
                                child: const Text(AppStrings.selectDateRange),
                              ),
                            ),
                          ),
                      loading:
                          () => SliverToBoxAdapter(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0.h),
                                child: const ShimmerLoadingWidget(),
                              ),
                            ),
                          ),
                      fetched: (events) => EventsListWidget(events: events),
                      error:
                          (message) => SliverToBoxAdapter(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      message,
                                      style: context.textTheme.bodyMedium
                                          ?.copyWith(
                                            color:
                                                context.theme.colorScheme.error,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                    );
                  },
                ),
              ),

              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 80.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
