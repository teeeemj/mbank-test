import 'package:flutter/material.dart';
import 'package:mbank_test_calendar/core/constants/app_strings.dart';
import 'package:mbank_test_calendar/core/extensions/date_extension.dart';
import 'package:mbank_test_calendar/core/extensions/theme_extension.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';

class EventsListWidget extends StatelessWidget {
  final List<Event> events;

  const EventsListWidget({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    if (events.isEmpty) {
      return const SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(AppStrings.noEvents),
          ),
        ),
      );
    }

    return SliverList.builder(
      itemCount: events.length,
      addRepaintBoundaries: true,
      addAutomaticKeepAlives: true,
      itemBuilder: (context, index) {
        final event = events[index];
        return RepaintBoundary(
          child: EventCard(
            key: ValueKey(
              '${event.eventName}_${event.date.millisecondsSinceEpoch}',
            ),
            event: event,
          ),
        );
      },
    );
  }
}

class EventCard extends StatelessWidget {
  final Event event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(event.eventName),
            const SizedBox(height: 4),
            Text('${AppStrings.when} ${event.date.toDisplayFormat()}'),
            Text(event.description),
          ],
        ),
      ),
    );
  }
}
