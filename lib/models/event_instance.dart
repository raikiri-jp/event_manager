import 'package:isar/isar.dart';

part 'event_instance.g.dart';

@collection
class EventInstance {
  Id id = Isar.autoIncrement;

  late int parentEventId;

  // この日付に発生したインスタンス
  late DateTime occurrenceDate;

  bool isOverridden = false; // 個別編集されているか
  bool isDeleted = false;    // 個別削除されているか

  // 個別に上書きされた場合のみ使う
  String? overriddenTitle;
  DateTime? overriddenStart;
  DateTime? overriddenEnd;
  String? overriddenDescription;
}
