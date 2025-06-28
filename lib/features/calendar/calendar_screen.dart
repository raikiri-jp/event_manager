import 'package:event_manager/features/calendar/widgets/custom_calendar.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Event Manager')),
      body: CustomCalendar(
        initialMonth: DateTime.now(),
        onDateTap: (selectedDate) {
          // ここで詳細画面に遷移など
        },
      ),
    );
  }
}
