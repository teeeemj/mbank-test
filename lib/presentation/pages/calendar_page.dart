import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/core/constants/app_strings.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';
import 'package:mbank_test_calendar/presentation/blocs/calendar_event_bloc/calendar_event_bloc.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_appbar_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_mode_indicator.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/calendar_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/events_list_widget.dart';
import 'package:mbank_test_calendar/presentation/widgets/calendar/shimmer_loading_widget.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage>
    with SingleTickerProviderStateMixin {
  bool _isRangeSelectionMode = false;
  late ScrollController _scrollController;

  static const double padding16 = 16.0;
  final emptyList = <Event>[];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onSelectionModeChanged(bool isRangeSelectionMode) {
    setState(() {
      _isRangeSelectionMode = isRangeSelectionMode;
    });
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
                backgroundColor: context.theme.scaffoldBackgroundColor,
                flexibleSpace: FlexibleSpaceBar(
                  background: CalendarWidget(
                    isRangeSelectionMode: _isRangeSelectionMode,
                    onSelectionModeChanged: _onSelectionModeChanged,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: CalendarModeIndicator(
                  isRangeSelectionMode: _isRangeSelectionMode,
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: padding16)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: padding16),
                sliver: BlocSelector<
                  CalendarEventBloc,
                  CalendarEventState,
                  CalendarEventState
                >(
                  selector: (state) => state,
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
