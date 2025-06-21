import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/event.dart';
import '../../models/enums.dart';
import '../../services/event_service.dart';

class EventFormScreen extends StatefulWidget {
  const EventFormScreen({super.key});

  @override
  State<EventFormScreen> createState() => _EventFormScreenState();
}

class _EventFormScreenState extends State<EventFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  DateTime _start = DateTime.now();
  DateTime _end = DateTime.now().add(const Duration(hours: 1));
  bool _adjustBusinessDay = false;
  BusinessDayRule _selectedRule = BusinessDayRule.none;

  final _eventService = EventService();

  Future<void> _save() async {
    if (_formKey.currentState!.validate()) {
      final event = Event()
        ..title = _titleController.text
        ..description = _descriptionController.text
        ..start = _start
        ..end = _end
        ..rrule = null
        ..isBusinessDayAdjusted = _adjustBusinessDay
        ..businessDayRule = _selectedRule;

      await _eventService.addEvent(event);

      if (context.mounted) {
        Navigator.pop(context);
      }
    }
  }

  Future<void> _pickDateTime({
    required bool isStart,
  }) async {
    final initial = isStart ? _start : _end;
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate == null) return;

    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initial),
    );
    if (pickedTime == null) return;

    final dateTime = DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      pickedTime.hour,
      pickedTime.minute,
    );

    setState(() {
      if (isStart) {
        _start = dateTime;
        if (_end.isBefore(_start)) {
          _end = _start.add(const Duration(hours: 1));
        }
      } else {
        _end = dateTime;
      }
    });
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
              // タイトル
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'タイトル'),
                validator: (value) =>
                    value == null || value.isEmpty ? 'タイトルは必須です' : null,
              ),
              const SizedBox(height: 12),
              // 説明
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: '説明'),
                maxLines: 3,
              ),
              const SizedBox(height: 12),
              // 開始時刻
              ListTile(
                title: const Text('開始'),
                subtitle: Text(dateFormat.format(_start)),
                trailing: const Icon(Icons.calendar_today),
                onTap: () => _pickDateTime(isStart: true),
              ),
              // 終了時刻
              ListTile(
                title: const Text('終了'),
                subtitle: Text(dateFormat.format(_end)),
                trailing: const Icon(Icons.calendar_today),
                onTap: () => _pickDateTime(isStart: false),
              ),
              const Divider(),
              // 営業日調整
              SwitchListTile(
                title: const Text('営業日調整を有効にする'),
                value: _adjustBusinessDay,
                onChanged: (value) {
                  setState(() {
                    _adjustBusinessDay = value;
                  });
                },
              ),
              if (_adjustBusinessDay)
                DropdownButtonFormField<BusinessDayRule>(
                  value: _selectedRule,
                  decoration:
                      const InputDecoration(labelText: '調整方法（営業日）'),
                  items: BusinessDayRule.values
                      .map((rule) => DropdownMenuItem(
                            value: rule,
                            child: Text(_labelForRule(rule)),
                          ))
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      setState(() {
                        _selectedRule = value;
                      });
                    }
                  },
                ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _save,
                child: const Text('保存'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _labelForRule(BusinessDayRule rule) {
    switch (rule) {
      case BusinessDayRule.none:
        return '調整しない';
      case BusinessDayRule.moveToPrevious:
        return '直前の営業日に変更';
      case BusinessDayRule.moveToNext:
        return '直後の営業日に変更';
    }
  }
}
