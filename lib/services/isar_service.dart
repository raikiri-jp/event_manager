import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/event.dart';

class IsarService {
  static Isar? _isar;

  static Future<Isar> getInstance() async {
    if (_isar == null) {
      final dir = await getApplicationDocumentsDirectory();
      _isar = await Isar.open([EventSchema], directory: dir.path);
    }
    return _isar!;
  }

  Future<void> addEvent(Event event) async {
    final isar = await getInstance();
    event.createdAt = DateTime.now();
    event.updatedAt = DateTime.now();
    await isar.writeTxn(() => isar.events.put(event));
  }

  Future<List<Event>> getAllEvents() async {
    final isar = await getInstance();
    return await isar.events.where().findAll();
  }

  Future<void> deleteEvent(int id) async {
    final isar = await getInstance();
    await isar.writeTxn(() => isar.events.delete(id));
  }
}
