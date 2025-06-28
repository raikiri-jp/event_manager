import 'package:flutter/material.dart';

class EventDetailScreen extends StatelessWidget {
  final int instanceId;
  final DateTime occurrenceDate;

  const EventDetailScreen({
    super.key,
    required this.instanceId,
    required this.occurrenceDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('イベント詳細'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => _showEditOptions(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('イベントID: $instanceId'),
            Text('発生日時: $occurrenceDate'),
            const SizedBox(height: 16),
            const Text('※ イベントの詳細情報はここに表示されます（未実装）'),
          ],
        ),
      ),
    );
  }

  void _showEditOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('この予定のみ編集'),
              onTap: () {
                Navigator.pop(context); // ダイアログを閉じる
                // TODO: 編集画面（この予定のみ）へ遷移
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit_calendar),
              title: const Text('この日以降をすべて編集'),
              onTap: () {
                Navigator.pop(context);
                // TODO: 編集画面（以降すべて）へ遷移
              },
            ),
            ListTile(
              leading: const Icon(Icons.event_repeat),
              title: const Text('すべての予定を編集'),
              onTap: () {
                Navigator.pop(context);
                // TODO: 編集画面（全体）へ遷移
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.cancel),
              title: const Text('キャンセル'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
