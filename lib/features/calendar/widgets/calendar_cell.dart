import 'package:flutter/material.dart';
import '../../../models/event.dart';

class CalendarCell extends StatelessWidget {
  final DateTime date;
  final List<Event> events;
  final VoidCallback onDateTap;

  const CalendarCell({
    super.key,
    required this.date,
    required this.events,
    required this.onDateTap,
  });

  @override
  Widget build(BuildContext context) {
    final isToday = _isSameDay(date, DateTime.now());

    return GestureDetector(
      onTap: onDateTap,
      child: Container(
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: isToday ? Colors.blue.shade100 : Colors.white,
        ),
        padding: const EdgeInsets.all(2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${date.day}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: _getDateTextColor(date),
              ),
            ),
            ...events
                .take(2)
                .map(
                  (event) => Text(
                    event.title,
                    style: const TextStyle(fontSize: 9),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
            if (events.length > 2)
              Text(
                '+${events.length - 2}件',
                style: const TextStyle(fontSize: 9, color: Colors.grey),
              ),
          ],
        ),
      ),
    );
  }

  bool _isSameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  Color _getDateTextColor(DateTime date) {
    if (date.weekday == DateTime.sunday) return Colors.red;
    if (date.weekday == DateTime.saturday) return Colors.blue;
    return Colors.black;
  }
}
