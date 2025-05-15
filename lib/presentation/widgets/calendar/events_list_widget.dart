import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
                Text('Date: ${DateFormat('dd.MM.yyyy').format(event.date)}'),
                Text(event.description),
              ],
            ),
          ),
        );
      }, childCount: events.length),
    );
  }
}
