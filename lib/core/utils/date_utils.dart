import 'package:intl/intl.dart';

class DateUtils {
  static final DateFormat _formatter = DateFormat('dd-MM-yyyy');

  static DateTime dateFromString(String date) {
    try {
      return _formatter.parse(date);
    } catch (e) {
      throw FormatException('Invalid date format: $date - $e');
    }
  }

  static String dateToString(DateTime date) {
    return _formatter.format(date);
  }
}
