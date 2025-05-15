import 'package:flutter/material.dart';

class EventsListWidget extends StatelessWidget {
  final List<dynamic> events;

  const EventsListWidget({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
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
