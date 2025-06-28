import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/event.dart';
import '../../services/isar_service.dart';
import 'recurrence_form.dart';

class EventFormScreen extends StatefulWidget {
  final DateTime? initialStart;
  final DateTime? initialEnd;

  const EventFormScreen({super.key, this.initialStart, this.initialEnd});

  @override
  State<EventFormScreen> createState() => _EventFormScreenState();
}

class _EventFormScreenState extends State<EventFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  late DateTime _startDate;
  late DateTime _endDate;
  String? _rrule;

  final _isar = IsarService();

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _startDate = widget.initialStart ?? now;
    _endDate = widget.initialEnd ?? now.add(const Duration(hours: 1));
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _saveEvent() async {
    if (!_formKey.currentState!.validate()) return;

    final event = Event()
      ..title = _titleController.text
      ..description = _descriptionController.text
      ..start = _startDate
      ..end = _endDate
      ..isRecurring = _rrule != null
      ..rrule = _rrule;

    await _isar.addEvent(event);
    if (!mounted) return;
    Navigator.pop(context, true);
  }

  Future<void> _pickDateTime({required bool isStart}) async {
    final initialDate = isStart ? _startDate : _endDate;
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (pickedDate == null) return;

    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initialDate),
    );
    if (pickedTime == null) return;

    final result = DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      pickedTime.hour,
      pickedTime.minute,
    );

    setState(() {
      if (isStart) {
        _startDate = result;
        if (_endDate.isBefore(_startDate)) {
          _endDate = _startDate.add(const Duration(hours: 1));
        }
      } else {
        _endDate = result;
        if (_endDate.isBefore(_startDate)) {
          _startDate = _endDate.subtract(const Duration(hours: 1));
        }
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
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'タイトル'),
                validator: (value) =>
                    (value == null || value.isEmpty) ? 'タイトルを入力してください' : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: '説明（任意）'),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              ListTile(
                title: const Text('開始日時'),
                subtitle: Text(dateFormat.format(_startDate)),
                trailing: const Icon(Icons.calendar_today),
                onTap: () => _pickDateTime(isStart: true),
              ),
              ListTile(
                title: const Text('終了日時'),
                subtitle: Text(dateFormat.format(_endDate)),
                trailing: const Icon(Icons.calendar_today),
                onTap: () => _pickDateTime(isStart: false),
              ),
              const Divider(height: 32),
              const Text(
                '繰り返し設定',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              RecurrenceForm(
                onChanged: (rrule) {
                  setState(() => _rrule = rrule);
                },
              ),
              if (_rrule != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'RRULE: $_rrule',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              const SizedBox(height: 32),
              ElevatedButton(onPressed: _saveEvent, child: const Text('保存')),
            ],
          ),
        ),
      ),
    );
  }
}
