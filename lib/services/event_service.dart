import 'package:event_manager/models/event.dart';
import 'package:event_manager/services/isar_service.dart';
import 'package:rrule/rrule.dart';

class EventService {
  final _isar = IsarService();

  /// 指定日のイベントを取得（単発 + 繰り返し）
  Future<List<Event>> getEventsForDate(DateTime date) async {
    final allEvents = await _isar.getAllEvents();
    final List<Event> results = [];

    for (final event in allEvents) {
      if (!event.isRecurring) {
        if (_isSameDay(event.start, date)) {
          results.add(event);
        }
      } else if (event.rrule != null) {
        try {
          final rule = RecurrenceRule.fromString(event.rrule!);
          final occurrences = rule
              .getInstances(start: event.start)
              .where((instance) => _isSameDay(instance.toLocal(), date));

          if (occurrences.isNotEmpty) {
            results.add(event);
          }
        } catch (e) {
          continue;
        }
      }
    }

    return results;
  }

  /// 日付比較（年・月・日が同じ）
  bool _isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}
