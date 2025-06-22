import 'package:event_manager/services/isar_service.dart';
import 'package:flutter/material.dart';
import 'package:event_manager/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IsarService().init();
  runApp(const EventManagerApp());
}
