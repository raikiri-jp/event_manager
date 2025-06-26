import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'widgets/custom_calendar.dart';
import '../../providers/calendar_provider.dart';

class CalendarScreen extends ConsumerWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Event Manager')),
      body: Column(
        children: [
          _MonthHeader(),
          Expanded(child: CustomCalendar()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _MonthHeader extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final focusedMonth = ref.watch(focusedMonthProvider);
    final notifier = ref.read(focusedMonthProvider.notifier);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            notifier.state = DateTime(
              focusedMonth.year,
              focusedMonth.month - 1,
            );
          },
        ),
        Text(
          '${focusedMonth.year}年 ${focusedMonth.month}月',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        IconButton(
          icon: const Icon(Icons.chevron_right),
          onPressed: () {
            notifier.state = DateTime(
              focusedMonth.year,
              focusedMonth.month + 1,
            );
          },
        ),
      ],
    );
  }
}
