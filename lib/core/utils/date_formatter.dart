import 'package:intl/intl.dart';

class DateFormatter {
  static final DateFormat _formatter = DateFormat('dd-MM-yyyy');

  static String formatDate(DateTime date) {
    return _formatter.format(date);
  }

  static DateTime parseDate(String date) {
    return _formatter.parse(date);
  }
}
