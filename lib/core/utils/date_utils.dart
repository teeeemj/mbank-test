class DateUtils {
  static DateTime dateFromString(String date) {
    try {
      final parts = date.split('-');
      if (parts.length != 3) {
        throw FormatException('Invalid date format: $date');
      }
      return DateTime(
        int.parse(parts[2]),
        int.parse(parts[1]),
        int.parse(parts[0]),
      );
    } catch (e) {
      throw FormatException('Invalid date format: $date - $e');
    }
  }

  static String dateToString(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}-${date.month.toString().padLeft(2, '0')}-${date.year}';
  }
}
