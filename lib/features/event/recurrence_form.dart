
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RecurrenceForm extends StatefulWidget {
  final void Function(String rrule)? onChanged;

  const RecurrenceForm({super.key, this.onChanged});

  @override
  State<RecurrenceForm> createState() => _RecurrenceFormState();
}

class _RecurrenceFormState extends State<RecurrenceForm> {
  String _freq = 'DAILY';
  int _interval = 1;
  final List<String> _selectedWeekdays = [];
  DateTime? _untilDate;
  int? _count;

  static const freqOptions = {
    'DAILY': '毎日',
    'WEEKLY': '毎週',
    'MONTHLY': '毎月',
    'YEARLY': '毎年',
  };

  static const weekdayMap = {
    'MO': '月',
    'TU': '火',
    'WE': '水',
    'TH': '木',
    'FR': '金',
    'SA': '土',
    'SU': '日',
  };

  void _updateRRule() {
    final parts = ['FREQ=$_freq'];

    if (_interval > 1) parts.add('INTERVAL=$_interval');

    if (_freq == 'WEEKLY' && _selectedWeekdays.isNotEmpty) {
      parts.add('BYDAY=${_selectedWeekdays.join(',')}');
    }

    if (_count != null) {
      parts.add('COUNT=$_count');
    } else if (_untilDate != null) {
      final untilStr = DateFormat("yyyyMMdd'T'HHmmss'Z'").format(_untilDate!.toUtc());
      parts.add('UNTIL=$untilStr');
    }

    final rrule = parts.join(';');
    widget.onChanged?.call(rrule);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(labelText: '繰り返し頻度'),
          value: _freq,
          items: freqOptions.entries
              .map((e) => DropdownMenuItem(value: e.key, child: Text(e.value)))
              .toList(),
          onChanged: (value) {
            setState(() {
              _freq = value!;
              _updateRRule();
            });
          },
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: '間隔（例：1なら毎回）'),
          initialValue: '1',
          keyboardType: TextInputType.number,
          onChanged: (value) {
            setState(() {
              _interval = int.tryParse(value) ?? 1;
              _updateRRule();
            });
          },
        ),
        if (_freq == 'WEEKLY')
          Wrap(
            spacing: 4,
            children: weekdayMap.entries.map((e) {
              final selected = _selectedWeekdays.contains(e.key);
              return FilterChip(
                label: Text(e.value),
                selected: selected,
                onSelected: (_) {
                  setState(() {
                    selected
                        ? _selectedWeekdays.remove(e.key)
                        : _selectedWeekdays.add(e.key);
                    _updateRRule();
                  });
                },
              );
            }).toList(),
          ),
        const SizedBox(height: 12),
        TextFormField(
          decoration: const InputDecoration(labelText: '繰り返し回数（省略可）'),
          keyboardType: TextInputType.number,
          onChanged: (value) {
            setState(() {
              _count = int.tryParse(value);
              _untilDate = null;
              _updateRRule();
            });
          },
        ),
        ListTile(
          title: Text(_untilDate == null
              ? '終了日を選択（省略可）'
              : '終了日: ${DateFormat('yyyy/MM/dd').format(_untilDate!)}'),
          trailing: const Icon(Icons.calendar_today),
          onTap: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: _untilDate ?? DateTime.now().add(const Duration(days: 30)),
              firstDate: DateTime.now(),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              setState(() {
                _untilDate = picked;
                _count = null;
                _updateRRule();
              });
            }
          },
        ),
      ],
    );
  }
}
