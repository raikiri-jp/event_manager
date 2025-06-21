import 'package:flutter/material.dart';
import '../../../models/event.dart';
import 'calendar_cell.dart';

class CustomCalendar extends StatelessWidget {
  final DateTime focusedMonth;

  const CustomCalendar({
    super.key,
    required this.focusedMonth,
  });

  DateTime _firstDayOfCalendar(DateTime month) {
    final firstDay = DateTime(month.year, month.month, 1);
    return firstDay.subtract(Duration(days: firstDay.weekday % 7));
  }

  @override
  Widget build(BuildContext context) {
    final start = _firstDayOfCalendar(focusedMonth);
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
              // TODO: イベント取得処理
              final List<Event> events = [];
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
          .map((d) => Expanded(
                child: Center(
                  child: Text(
                    d,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ))
          .toList(),
    );
  }
}
