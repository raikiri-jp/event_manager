import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/event.dart';
import '../../services/isar_service.dart';

class EventFormScreen extends StatefulWidget {
  const EventFormScreen({super.key});

  @override
  State<EventFormScreen> createState() => _EventFormScreenState();
}

class _EventFormScreenState extends State<EventFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _isar = IsarService();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(const Duration(hours: 1));

  Future<void> _selectDateTime({
    required DateTime initialDate,
    required ValueChanged<DateTime> onConfirmed,
  }) async {
    final date = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (date == null) return;

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initialDate),
    );
    if (time == null) return;

    onConfirmed(DateTime(date.year, date.month, date.day, time.hour, time.minute));
  }

  Future<void> _saveEvent() async {
    if (!_formKey.currentState!.validate()) return;

    final event = Event()
      ..title = _titleController.text
      ..description = _descriptionController.text
      ..start = _startDate
      ..end = _endDate
      ..isRecurring = false;

    await _isar.addEvent(event);
    if (context.mounted) Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('yyyy/MM/dd HH:mm');

    return Scaffold(
      appBar: AppBar(title: const Text('イベント作成')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'タイトル'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'タイトルを入力してください' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: '説明（任意）'),
              ),
              const SizedBox(height: 20),
              ListTile(
                title: Text('開始: ${dateFormat.format(_startDate)}'),
                trailing: const Icon(Icons.calendar_today),
                onTap: () => _selectDateTime(
                  initialDate: _startDate,
                  onConfirmed: (dt) => setState(() => _startDate = dt),
                ),
              ),
              ListTile(
                title: Text('終了: ${dateFormat.format(_endDate)}'),
                trailing: const Icon(Icons.calendar_today),
                onTap: () => _selectDateTime(
                  initialDate: _endDate,
                  onConfirmed: (dt) => setState(() => _endDate = dt),
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _saveEvent,
                child: const Text('保存'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
