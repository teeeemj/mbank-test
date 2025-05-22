import 'package:flutter/material.dart';
import 'package:mbank_test_calendar/app.dart';
import 'core/di/service_locator.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const App());
}
