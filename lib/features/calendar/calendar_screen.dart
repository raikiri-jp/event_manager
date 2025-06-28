import 'package:event_manager/features/calendar/event_list_screen.dart';
import 'package:event_manager/features/calendar/widgets/custom_calendar.dart';
import 'package:event_manager/features/event/event_form_screen.dart';
import 'package:flutter/material.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  bool _isNavigating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('カレンダー')),
      body: CustomCalendar(
        initialMonth: DateTime.now(),
        onDateTap: _handleDateTap,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleAddEvent,
        tooltip: 'イベントを追加',
        child: Icon(Icons.add),
      ),
    );
  }

  void _handleDateTap(DateTime selectedDate) async {
    if (_isNavigating) return;
    _isNavigating = true;

    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EventListScreen(selectedDate: selectedDate),
      ),
    );
    _isNavigating = false;
  }

  void _handleAddEvent() async {
    if (_isNavigating) return;
    _isNavigating = true;

    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const EventFormScreen(), // イベント作成画面
      ),
    );
    // TODO: DB変更があれば setState() などで再描画
    _isNavigating = false;
  }
}
