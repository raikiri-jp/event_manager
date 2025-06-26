import 'package:event_manager/features/calendar/widgets/custom_calendar.dart';
import 'package:flutter/material.dart';
import 'features/event/event_form_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(home: CalendarTestScreen()));
}

class CalendarTestScreen extends StatelessWidget {
  const CalendarTestScreen({super.key});

  void _openForm(BuildContext context, DateTime date) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EventFormScreen(
          initialStart: DateTime(date.year, date.month, date.day, 9),
          initialEnd: DateTime(date.year, date.month, date.day, 10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('カレンダー表示')),
      body: CustomCalendar(onDateTap: (date) => _openForm(context, date)),
    );
  }
}
