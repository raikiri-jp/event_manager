import 'package:event_manager/features/calendar/event_list_screen.dart';
import 'package:event_manager/features/calendar/widgets/custom_calendar.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _focusedMonth = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('カレンダー')),
      body: CustomCalendar(
        focusedMonth: _focusedMonth,
        onDateTap: (date) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => EventListScreen(selectedDate: date),
            ),
          );
        },
      ),
    );
  }
}
