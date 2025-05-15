import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';
import 'package:mbank_test_calendar/domain/usecases/get_events.dart';

part 'calendar_event_event.dart';
part 'calendar_event_state.dart';
part 'calendar_event_bloc.freezed.dart';

class CalendarEventBloc extends Bloc<CalendarEventEvent, CalendarEventState> {
  final GetEvents getEvents;
  DateTime _startDate = DateTime.now();
  DateTime? _endDate;

  CalendarEventBloc({required this.getEvents})
    : super(CalendarEventState.initial()) {
    on<_GetEvents>(_onGetEvents);
    on<_GetRangeSelectedEvents>(_onGetRangeSelectedEvents);
  }

  Future<void> _onGetEvents(
    _GetEvents event,
    Emitter<CalendarEventState> emit,
  ) async {
    emit(const CalendarEventState.loading());
    final params = EventParams(startDate: _startDate, endDate: _endDate);
    final result = await getEvents(params);
    result.fold(
      (failure) => emit(CalendarEventState.error(failure.message)),
      (events) => emit(CalendarEventState.fetched(events)),
    );
  }

  Future<void> _onGetRangeSelectedEvents(
    _GetRangeSelectedEvents event,
    Emitter<CalendarEventState> emit,
  ) async {
    _startDate = event.startDate;
    _endDate = event.endDate;
    emit(const CalendarEventState.loading());
    final params = EventParams(startDate: _startDate, endDate: _endDate);
    final result = await getEvents(params);
    result.fold(
      (failure) => emit(CalendarEventState.error(failure.message)),
      (events) => emit(CalendarEventState.fetched(events)),
    );
  }
}
