import 'package:event_manager/screens/event_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/event.dart';
import '../../services/event_service.dart';

class EventListScreen extends StatelessWidget {
  final DateTime selectedDate;

  const EventListScreen({super.key, required this.selectedDate});

  @override
  Widget build(BuildContext context) {
    final eventService = EventService();
    final formattedDate = DateFormat('yyyy年MM月dd日').format(selectedDate);

    return Scaffold(
      appBar: AppBar(title: Text('$formattedDate の予定')),
      body: FutureBuilder<List<Event>>(
        future: eventService.getEventsForDate(selectedDate),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('予定はありません'));
          }

          final events = snapshot.data!;
          return ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              final dateFormat = DateFormat('HH:mm');
              final start = dateFormat.format(event.start);
              final end = dateFormat.format(event.end);
              return ListTile(
                title: Text(event.title),
                subtitle: Text('$start - $end'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => EventDetailScreen(
                        instanceId: event.id,
                        occurrenceDate: event.start,
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
