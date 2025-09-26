enum CalendarSelectionMode {
  single,
  range;

  bool get isSingle => this == CalendarSelectionMode.single;
  bool get isRange => this == CalendarSelectionMode.range;
}

/// Диапазон дат
class DateRange {
  const DateRange({required this.start, this.end});

  final DateTime start;
  final DateTime? end;

  bool get isValid {
    if (end == null) {
      return true;
    }
    return end!.isAfter(start) || end!.isAtSameMomentAs(start);
  }

  /// Количество дней в диапазоне
  int get daysDifference {
    if (end == null) {
      return 0;
    }
    return end!.difference(start).inDays + 1;
  }

  /// Проверка минимального диапазона (7 дней)
  bool get meetsMinimumRange => daysDifference >= 7;

  /// Содержит ли диапазон указанную дату
  bool contains(DateTime date) {
    if (end == null) {
      return date.isAtSameMomentAs(start);
    }
    return (date.isAfter(start) || date.isAtSameMomentAs(start)) &&
        (date.isBefore(end!) || date.isAtSameMomentAs(end!));
  }
}

typedef DateSelectedCallback = void Function(DateTime date);
typedef DateRangeSelectedCallback = void Function(DateRange range);
typedef CalendarModeChangedCallback = void Function(CalendarSelectionMode mode);
