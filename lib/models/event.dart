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

  bool isRecurring = false;
  String? rrule; // RRULE形式の文字列（例："FREQ=WEEKLY;BYDAY=MO,WE,FR"）

  @Enumerated(EnumType.name)
  BusinessDayRule businessDayRule = BusinessDayRule.none;

  // 例えば繰り返しイベントに対するインスタンスの生成範囲を制限する場合
  DateTime? recurrenceUntil;

  // 作成日時
  late DateTime createdAt;
  late DateTime updatedAt;
}