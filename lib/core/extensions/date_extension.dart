import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toDisplayFormat() {
    return DateFormat('dd.MM.yyyy').format(this);
  }
}
