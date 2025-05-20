import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mbank_test_calendar/core/constants/app_strings.dart';

class EventsListWidget extends StatelessWidget {
  final List<dynamic> events;

  const EventsListWidget({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    if (events.isEmpty) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0.h),
            child: const Text(AppStrings.noEvents),
          ),
        ),
      );
    }

    return SliverList.builder(
      itemCount: events.length,
      addRepaintBoundaries: true,
      itemBuilder: (context, index) {
        final event = events[index];
        return EventCard(
          key: ValueKey(
            '${event.eventName}_${event.date.millisecondsSinceEpoch}',
          ),
          event: event,
        );
      },
    );
  }
}

class EventCard extends StatelessWidget {
  final dynamic event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.h),
      child: ListTile(
        title: Text(event.eventName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${AppStrings.when} ${DateFormat('dd.MM.yyyy').format(event.date)}',
            ),
            Text(event.description),
          ],
        ),
      ),
    );
  }
}
