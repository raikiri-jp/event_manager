import 'package:event_manager/models/event.dart';
import 'package:flutter/material.dart';

class CustomCalendar extends StatefulWidget {
  final DateTime initialMonth;
  final Function(DateTime) onDateTap;

  const CustomCalendar({
    super.key,
    required this.initialMonth,
    required this.onDateTap,
  });

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  late DateTime _focusedMonth;

  @override
  void initState() {
    super.initState();
    _focusedMonth = widget.initialMonth;
  }

  void _goToPreviousMonth() {
    setState(() {
      _focusedMonth = DateTime(_focusedMonth.year, _focusedMonth.month - 1);
    });
  }

  void _goToNextMonth() {
    setState(() {
      _focusedMonth = DateTime(_focusedMonth.year, _focusedMonth.month + 1);
    });
  }

  DateTime _getDateForIndex(int index) {
    final firstDayOfMonth = DateTime(
      _focusedMonth.year,
      _focusedMonth.month,
      1,
    );
    final weekdayOffset = (firstDayOfMonth.weekday % 7); // Sunday == 0
    return firstDayOfMonth
        .subtract(Duration(days: weekdayOffset))
        .add(Duration(days: index));
  }

  List<Event> getEventsForDay(DateTime date) {
    // 仮実装：今は空のリストを返す
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 月ヘッダー + 月切替ボタン
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: _goToPreviousMonth,
            ),
            Text(
              '${_focusedMonth.year}年${_focusedMonth.month}月',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: const Icon(Icons.chevron_right),
              onPressed: _goToNextMonth,
            ),
          ],
        ),

        // 曜日ヘッダー
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: ['日', '月', '火', '水', '木', '金', '土'].map((label) {
            return Expanded(
              child: Center(
                child: Text(
                  label,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
          }).toList(),
        ),

        // カレンダー本体
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1.0,
            ),
            itemCount: 42, // 最大6週分
            itemBuilder: (context, index) {
              final date = _getDateForIndex(index);
              final events = getEventsForDay(date);

              return GestureDetector(
                onTap: () => widget.onDateTap(date),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    color: Colors.white,
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
                          color: date.month == _focusedMonth.month
                              ? Colors.black
                              : Colors.grey.shade400,
                        ),
                      ),
                      ...events
                          .take(3)
                          .map(
                            (event) => Text(
                              event.title,
                              style: const TextStyle(fontSize: 8),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                      if (events.length > 3)
                        Text(
                          '+${events.length - 3}件',
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.grey.shade600,
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
