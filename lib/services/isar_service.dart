import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/event.dart';
import '../models/event_instance.dart';

class IsarService {
  static final IsarService _instance = IsarService._internal();
  factory IsarService() => _instance;
  IsarService._internal();

  late Isar isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [EventSchema, EventInstanceSchema],
      directory: dir.path,
    );
  }
}
