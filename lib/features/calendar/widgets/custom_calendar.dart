import 'package:event_manager/models/event.dart';
import 'package:event_manager/services/isar_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCalendar extends StatefulWidget {
  final void Function(DateTime date)? onDateTap;

  const CustomCalendar({super.key, this.onDateTap});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime _focusedMonth = DateTime.now();
  final _isar = IsarService();

  Future<List<Event>> _getEventsForDay(DateTime date) async {
    final all = await _isar.getAllEvents();
    return all.where((e) {
      return !e.isRecurring &&
          e.start.year == date.year &&
          e.start.month == date.month &&
          e.start.day == date.day;
    }).toList();
  }

  List<DateTime> _getDaysInMonthGrid(DateTime month) {
    final firstDay = DateTime(month.year, month.month, 1);
    final firstWeekday = firstDay.weekday % 7; // 日曜始まり (0〜6)
    final daysBefore = firstDay.subtract(Duration(days: firstWeekday));

    return List.generate(42, (i) => daysBefore.add(Duration(days: i)));
  }

  void _changeMonth(int offset) {
    setState(() {
      _focusedMonth = DateTime(_focusedMonth.year, _focusedMonth.month + offset);
    });
  }

  @override
  Widget build(BuildContext context) {
    final days = _getDaysInMonthGrid(_focusedMonth);
    final monthFormat = DateFormat('yyyy年MM月');

    return Column(
      children: [
        // 月ナビゲーション
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () => _changeMonth(-1), icon: const Icon(Icons.chevron_left)),
            Text(monthFormat.format(_focusedMonth), style: const TextStyle(fontSize: 18)),
            IconButton(onPressed: () => _changeMonth(1), icon: const Icon(Icons.chevron_right)),
          ],
        ),
        const SizedBox(height: 8),
        // 曜日ラベル
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: ['日', '月', '火', '水', '木', '金', '土']
              .map((d) => Expanded(
                    child: Center(
                        child: Text(d, style: const TextStyle(fontWeight: FontWeight.bold))),
                  ))
              .toList(),
        ),
        const SizedBox(height: 4),
        // カレンダーグリッド
        Expanded(
          child: GridView.builder(
            itemCount: days.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1.1,
            ),
            itemBuilder: (context, index) {
              final date = days[index];
              final isCurrentMonth = date.month == _focusedMonth.month;
              final isToday = date == DateTime.now().copyWith(hour: 0, minute: 0, second: 0);

              return FutureBuilder<List<Event>>(
                future: _getEventsForDay(date),
                builder: (context, snapshot) {
                  final events = snapshot.data ?? [];

                  return GestureDetector(
                    onTap: () => widget.onDateTap?.call(date),
                    child: Container(
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: isToday
                            ? Colors.lightBlueAccent.withAlpha((0.3 * 255).toInt())
                            : Colors.transparent,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${date.day}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: isCurrentMonth ? Colors.black : Colors.grey,
                            ),
                          ),
                          ...events.take(2).map((e) => Text(
                                e.title,
                                style: const TextStyle(fontSize: 9),
                                overflow: TextOverflow.ellipsis,
                              )),
                          if (events.length > 2)
                            Text('+${events.length - 2}件',
                                style:
                                    const TextStyle(fontSize: 9, color: Colors.grey)),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
