import 'package:event_manager/features/event/recurrence_form.dart';
import 'package:flutter/material.dart';
import '../../models/event.dart';

class EventFormScreen extends StatefulWidget {
  final DateTime? initialStart;
  final DateTime? initialEnd;

  const EventFormScreen({super.key, this.initialStart, this.initialEnd});

  @override
  State<EventFormScreen> createState() => _EventFormScreenState();
}

class _EventFormScreenState extends State<EventFormScreen> {
  String? _rrule;
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  late DateTime _startDate;
  late DateTime _endDate;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _startDate = widget.initialStart ?? now;
    _endDate = widget.initialEnd ?? now.add(const Duration(hours: 1));
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

    if (!mounted) {
      return;
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('イベント作成')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // ...タイトル・説明・日付など...
              const SizedBox(height: 24),
              const Text(
                '繰り返し設定',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              RecurrenceForm(
                onChanged: (rrule) => setState(() => _rrule = rrule),
              ),
              if (_rrule != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    '生成されたRRULE: $_rrule',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              const SizedBox(height: 24),
              ElevatedButton(onPressed: _saveEvent, child: const Text('保存')),
            ],
          ),
        ),
      ),
    );
  }
}
