import 'package:flutter/material.dart';
import 'package:mbank_test_calendar/core/constants/app_dimensions.dart';
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
            padding: EdgeInsets.all(AppDimensions.spacing16),
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
        return EventCard(key: ValueKey(event.hashCode), event: event);
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
      margin: const EdgeInsets.only(bottom: AppDimensions.spacing12),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
        borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppDimensions.spacing12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(event.eventName),
            const SizedBox(height: AppDimensions.spacing4),
            Text('${AppStrings.when} ${event.date.toDisplayFormat()}'),
            Text(event.description),
          ],
        ),
      ),
    );
  }
}
