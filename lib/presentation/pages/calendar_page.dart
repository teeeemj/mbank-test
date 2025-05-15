import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  void _onSelectionModeChanged(Set<bool> selection) {
    setState(() {
      _isRangeSelectionMode = selection.first;
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
        onSelectionChanged: _onSelectionModeChanged,
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
                backgroundColor: Colors.grey.shade100,
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
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 16.0,
                          ),
                          color: Colors.grey.shade100,
                          child: Text(
                            _isRangeSelectionMode
                                ? _rangeStart != null && _rangeEnd != null
                                    ? 'Выбран диапазон дат'
                                    : _rangeStart != null
                                    ? 'Выберите вторую дату диапазона'
                                    : 'Выберите первую дату диапазона'
                                : 'Режим выбора одной даты',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(child: const SizedBox(height: 16)),

              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: BlocBuilder<CalendarEventBloc, CalendarEventState>(
                  builder: (context, state) {
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
