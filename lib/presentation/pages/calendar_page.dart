import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/presentation/bloc/calendar_event_bloc.dart';
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
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    context.read<CalendarEventBloc>().add(
      CalendarEventEvent.getRangeSelectedEvents(_selectedDay, null),
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
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    context.read<CalendarEventBloc>().add(
      CalendarEventEvent.getRangeSelectedEvents(selectedDay, null),
    );
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = focusedDay;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    if (start != null) {
      context.read<CalendarEventBloc>().add(
        CalendarEventEvent.getRangeSelectedEvents(start, end),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final calendarHeight = MediaQuery.of(context).size.height * 0.43;

    return Scaffold(
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
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: CalendarWidget(
                    focusedDay: _focusedDay,
                    selectedDay: _selectedDay,
                    rangeStart: _rangeStart,
                    rangeEnd: _rangeEnd,
                    rangeSelectionMode: _rangeSelectionMode,
                    onDaySelected: _onDaySelected,
                    onRangeSelected: _onRangeSelected,
                  ),
                ),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 16)),

              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: BlocBuilder<CalendarEventBloc, CalendarEventState>(
                  builder: (context, state) {
                    log(state.toString());
                    return state.when(
                      initial:
                          () => const SliverToBoxAdapter(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text('Select a date range'),
                              ),
                            ),
                          ),
                      loading:
                          () => SliverToBoxAdapter(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ShimmerLoadingWidget(),
                              ),
                            ),
                          ),
                      fetched: (events) => EventsListWidget(events: events),
                      error:
                          (message) => SliverToBoxAdapter(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      message,
                                      style: const TextStyle(color: Colors.red),
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
                  height: MediaQuery.of(context).padding.bottom + 80,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
