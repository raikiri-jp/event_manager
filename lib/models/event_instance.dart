import 'package:isar/isar.dart';

part 'event_instance.g.dart';

@collection
class EventInstance {
  Id id = Isar.autoIncrement;

  late int eventId;
  late DateTime date;

  bool isDeleted = false;
  String? overrideTitle;
  DateTime? overrideStart;
  DateTime? overrideEnd;
}
