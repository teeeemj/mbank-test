import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mbank_test_calendar/core/types/calendar_types.dart';

part 'calendar_selection_state.dart';

class CalendarSelectionCubit extends Cubit<CalendarSelectionState> {
  CalendarSelectionCubit() : super(CalendarSelectionState.initial());

  void selectDate(DateTime date) {
    emit(
      CalendarSelectionState(
        selectionMode: state.selectionMode,
        selectedDate: date,
        selectedRange: null,
        focusedDate: date,
      ),
    );
  }

  void selectRange(DateTime start, [DateTime? end]) {
    final range = DateRange(start: start, end: end);

    emit(
      CalendarSelectionState(
        selectionMode: state.selectionMode,
        selectedDate: null,
        selectedRange: range,
        focusedDate: start,
      ),
    );
  }

  void changeMode(CalendarSelectionMode mode) {
    if (state.selectionMode == mode) return;

    emit(
      CalendarSelectionState(
        selectionMode: mode,
        selectedDate: null,
        selectedRange: null,
        focusedDate: state.focusedDate,
      ),
    );
  }

  void changeFocusedDate(DateTime date) {
    emit(state.copyWith(focusedDate: date));
  }

  void clearSelection() {
    emit(
      CalendarSelectionState(
        selectionMode: state.selectionMode,
        selectedDate: null,
        selectedRange: null,
        focusedDate: state.focusedDate,
      ),
    );
  }

  bool isDateSelected(DateTime date) {
    if (state.selectedDate != null) {
      return isSameDay(state.selectedDate!, date);
    }

    if (state.selectedRange != null) {
      return state.selectedRange!.contains(date);
    }

    return false;
  }

  bool isRangeStart(DateTime date) {
    return state.selectedRange != null &&
        isSameDay(state.selectedRange!.start, date);
  }

  bool isRangeEnd(DateTime date) {
    return state.selectedRange?.end != null &&
        isSameDay(state.selectedRange!.end!, date);
  }

  bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}
