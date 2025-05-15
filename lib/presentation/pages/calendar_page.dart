import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/presentation/bloc/calendar_event_bloc.dart';
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

  @override
  Widget build(BuildContext context) {
    final calendarHeight = 350.0;

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
                  background: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
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
                      availableGestures: AvailableGestures.none,
                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: _focusedDay,
                      selectedDayPredicate:
                          (day) => isSameDay(_selectedDay, day),
                      rangeStartDay: _rangeStart,
                      rangeEndDay: _rangeEnd,
                      rangeSelectionMode: _rangeSelectionMode,
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                          _rangeStart = null;
                          _rangeEnd = null;
                          _rangeSelectionMode = RangeSelectionMode.enforced;
                        });

                        context.read<CalendarEventBloc>().add(
                          CalendarEventEvent.getRangeSelectedEvents(
                            selectedDay,
                            null,
                          ),
                        );
                      },
                      onRangeSelected: (start, end, focusedDay) {
                        setState(() {
                          _selectedDay = focusedDay;
                          _focusedDay = focusedDay;
                          _rangeStart = start;
                          _rangeEnd = end;
                          _rangeSelectionMode = RangeSelectionMode.toggledOn;
                        });

                        if (start != null) {
                          context.read<CalendarEventBloc>().add(
                            CalendarEventEvent.getRangeSelectedEvents(
                              start,
                              end,
                            ),
                          );
                        }
                      },
                    ),
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
                          () => const SliverToBoxAdapter(
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: CircularProgressIndicator(),
                              ),
                            ),
                          ),
                      fetched: (events) => _buildEventsList(events),
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

  Widget _buildEventsList(List<dynamic> events) {
    if (events.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Нет никаких событий'),
          ),
        ),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final event = events[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text(event.eventName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date: ${event.date.day}/${event.date.month}/${event.date.year}',
                ),
                Text(event.description),
              ],
            ),
          ),
        );
      }, childCount: events.length),
    );
  }
}
