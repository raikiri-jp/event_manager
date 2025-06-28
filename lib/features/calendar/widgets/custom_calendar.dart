import 'package:event_manager/features/calendar/widgets/calendar_cell.dart';
import 'package:event_manager/models/event.dart';
import 'package:event_manager/services/event_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatefulWidget {
  final DateTime focusedMonth;
  final Function(DateTime) onDateTap;

  const CustomCalendar({
    super.key,
    required this.focusedMonth,
    required this.onDateTap,
  });

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  final _eventService = EventService();
  Map<String, List<Event>> _eventsByDay = {};

  @override
  void initState() {
    super.initState();
    _loadEvents();
  }

  @override
  void didUpdateWidget(CustomCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!isSameMonth(widget.focusedMonth, oldWidget.focusedMonth)) {
      _loadEvents();
    }
  }

  bool isSameMonth(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month;
  }

  Future<void> _loadEvents() async {
    final start = DateTime(
      widget.focusedMonth.year,
      widget.focusedMonth.month,
      1,
    );
    final end = DateTime(
      widget.focusedMonth.year,
      widget.focusedMonth.month + 1,
      0,
    );
    final days = List.generate(end.day, (i) => start.add(Duration(days: i)));

    final Map<String, List<Event>> result = {};

    for (final day in days) {
      final events = await _eventService.getEventsForDate(day);
      result[DateFormat('yyyy-MM-dd').format(day)] = events;
    }

    setState(() {
      _eventsByDay = result;
    });
  }

  DateTime _getDateForIndex(int index) {
    final firstDay = DateTime(
      widget.focusedMonth.year,
      widget.focusedMonth.month,
      1,
    );
    final weekdayOffset = firstDay.weekday % 7; // 0: Sunday
    return firstDay
        .subtract(Duration(days: weekdayOffset))
        .add(Duration(days: index));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ヘッダーなど省略
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1.0,
            ),
            itemCount: 42,
            itemBuilder: (context, index) {
              final date = _getDateForIndex(index);
              final key = DateFormat('yyyy-MM-dd').format(date);
              final events = _eventsByDay[key] ?? [];
              return CalendarCell(
                date: date,
                events: events,
                onDateTap: () => widget.onDateTap(date),
              );
            },
          ),
        ),
      ],
    );
  }
}
