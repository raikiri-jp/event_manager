import 'package:flutter/material.dart';
import '../../../models/event.dart';
import '../../../services/event_service.dart';
import 'calendar_cell.dart';

class CustomCalendar extends StatefulWidget {
  final DateTime focusedMonth;

  const CustomCalendar({super.key, required this.focusedMonth});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  final EventService _eventService = EventService();
  Map<DateTime, List<Event>> _eventsMap = {};

  @override
  void didUpdateWidget(covariant CustomCalendar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.focusedMonth != widget.focusedMonth) {
      _loadEvents();
    }
  }

  @override
  void initState() {
    super.initState();
    _loadEvents();
  }

  void _loadEvents() async {
    final start = DateTime(
      widget.focusedMonth.year,
      widget.focusedMonth.month,
      1,
    );
    final end = DateTime(
      widget.focusedMonth.year,
      widget.focusedMonth.month + 1,
      0,
      23,
      59,
      59,
    );

    final events = await _eventService.getEventsBetween(start, end);

    // 日付ごとにまとめる
    final Map<DateTime, List<Event>> map = {};
    for (var event in events) {
      final date = DateTime(
        event.start.year,
        event.start.month,
        event.start.day,
      );
      if (!map.containsKey(date)) {
        map[date] = [];
      }
      map[date]!.add(event);
    }

    setState(() {
      _eventsMap = map;
    });
  }

  DateTime _firstDayOfCalendar(DateTime month) {
    final firstDay = DateTime(month.year, month.month, 1);
    return firstDay.subtract(Duration(days: firstDay.weekday % 7));
  }

  @override
  Widget build(BuildContext context) {
    final start = _firstDayOfCalendar(widget.focusedMonth);
    final days = List.generate(42, (i) => start.add(Duration(days: i)));

    return Column(
      children: [
        _weekdayHeader(),
        Expanded(
          child: GridView.builder(
            itemCount: days.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final date = days[index];
              final events =
                  _eventsMap[DateTime(date.year, date.month, date.day)] ?? [];
              return CalendarCell(date: date, events: events);
            },
          ),
        ),
      ],
    );
  }

  Widget _weekdayHeader() {
    const days = ['日', '月', '火', '水', '木', '金', '土'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: days
          .map(
            (d) => Expanded(
              child: Center(
                child: Text(
                  d,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
