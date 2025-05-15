import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/presentation/blocs/calendar_event_bloc/calendar_event_bloc.dart';
import 'core/di/service_locator.dart' as di;
import 'presentation/pages/calendar_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        create: (_) => di.sl<CalendarEventBloc>(),
        child: const CalendarPage(),
      ),
    );
  }
}
