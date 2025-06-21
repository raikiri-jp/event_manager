import 'package:isar/isar.dart';
import '../models/event.dart';
import '../services/isar_service.dart';

class EventService {
  final Isar _isar = IsarService().isar;

  Future<void> addEvent(Event event) async {
    await _isar.writeTxn(() async {
      await _isar.events.put(event);
    });
  }

  Future<void> deleteEvent(Id id) async {
    await _isar.writeTxn(() async {
      await _isar.events.delete(id);
    });
  }

  Future<List<Event>> getEventsForMonth(DateTime month) async {
    final start = DateTime(month.year, month.month, 1);
    final end = DateTime(month.year, month.month + 1, 0, 23, 59, 59);

    return await _isar.events
        .filter()
        .startBetween(start, end)
        .findAll();
  }

  Future<Event?> getEventById(Id id) async {
    return await _isar.events.get(id);
  }
}
