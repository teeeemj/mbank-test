part of 'calendar_selection_cubit.dart';

class CalendarSelectionState {
  const CalendarSelectionState({
    this.selectionMode = CalendarSelectionMode.single,
    this.selectedDate,
    this.selectedRange,
    required this.focusedDate,
  });

  final CalendarSelectionMode selectionMode;
  final DateTime? selectedDate;
  final DateRange? selectedRange;
  final DateTime focusedDate;

  CalendarSelectionState copyWith({
    CalendarSelectionMode? selectionMode,
    DateTime? selectedDate,
    DateRange? selectedRange,
    DateTime? focusedDate,
    bool clearSelectedDate = false,
    bool clearSelectedRange = false,
  }) {
    return CalendarSelectionState(
      selectionMode: selectionMode ?? this.selectionMode,
      selectedDate:
          clearSelectedDate ? null : (selectedDate ?? this.selectedDate),
      selectedRange:
          clearSelectedRange ? null : (selectedRange ?? this.selectedRange),
      focusedDate: focusedDate ?? this.focusedDate,
    );
  }

  factory CalendarSelectionState.initial() =>
      CalendarSelectionState(focusedDate: DateTime.now());

  bool get hasSelection => selectedDate != null || selectedRange != null;

  bool get isRangeComplete => selectedRange?.end != null;

  bool get isRangeValid => selectedRange?.isValid ?? true;

  bool get meetsRangeRequirements => selectedRange?.meetsMinimumRange ?? true;

  DateTime? get currentSelectedDate {
    if (selectionMode.isSingle) {
      return selectedDate;
    }
    return selectedRange?.start;
  }

  DateRange? get currentSelectedRange {
    if (selectionMode.isRange) {
      return selectedRange;
    }
    return null;
  }

  String getSelectionStatusText() {
    if (selectionMode.isSingle) {
      return selectedDate != null
          ? 'Выбрана дата: ${_formatDate(selectedDate!)}'
          : 'Выберите дату';
    } else {
      if (selectedRange == null) {
        return 'Выберите начальную дату диапазона';
      } else if (selectedRange!.end == null) {
        return 'Выберите конечную дату диапазона';
      } else {
        return 'Выбран диапазон: ${_formatDate(selectedRange!.start)} - ${_formatDate(selectedRange!.end!)}';
      }
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
  }
}
