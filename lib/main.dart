import 'package:flutter/material.dart';
import 'models/event.dart';
import 'services/isar_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final isarService = IsarService();

  // 仮のイベントを登録して取得
  final newEvent = Event()
    ..title = 'テストイベント'
    ..description = 'テスト用の説明'
    ..start = DateTime(2025, 6, 30, 10)
    ..end = DateTime(2025, 6, 30, 11)
    ..isRecurring = false;

  await isarService.addEvent(newEvent);

  final allEvents = await isarService.getAllEvents();
  for (var e in allEvents) {
    print('${e.id}: ${e.title} (${e.start}〜${e.end})');
  }

  runApp(const PlaceholderApp());
}

class PlaceholderApp extends StatelessWidget {
  const PlaceholderApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Event Manager 動作テスト')),
      ),
    );
  }
}
