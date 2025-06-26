import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/event.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = _initIsar();
  }

  Future<Isar> _initIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [EventSchema],
      directory: dir.path,
    );
  }

  Future<void> addEvent(Event event) async {
    final isar = await db;
    event.createdAt = DateTime.now();
    event.updatedAt = DateTime.now();
    await isar.writeTxn(() => isar.events.put(event));
  }

  Future<List<Event>> getAllEvents() async {
    final isar = await db;
    return await isar.events.where().findAll();
  }

  Future<void> deleteEvent(int id) async {
    final isar = await db;
    await isar.writeTxn(() => isar.events.delete(id));
  }
}
