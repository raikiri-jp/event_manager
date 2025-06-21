import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../features/calendar/calendar_screen.dart';
import '../features/event/event_form_screen.dart';
import 'theme/app_theme.dart';

class EventManagerApp extends StatelessWidget {
  const EventManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Event Manager',
        theme: AppTheme.light,
        initialRoute: '/',
        routes: {
          '/': (context) => const CalendarScreen(),
          '/add': (context) => const EventFormScreen(),
        },
      ),
    );
  }
}
