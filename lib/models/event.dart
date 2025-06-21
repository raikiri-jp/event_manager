import 'package:isar/isar.dart';
import 'enums.dart';

part 'event.g.dart';

@collection
class Event {
  Id id = Isar.autoIncrement;

  late String title;
  String? description;

  late DateTime start;
  late DateTime end;

  String? rrule;
  DateTime? recurrenceEndDate;
  int? recurrenceCount;

  bool isBusinessDayAdjusted = false;

  @enumerated
  late BusinessDayRule businessDayRule;
}
