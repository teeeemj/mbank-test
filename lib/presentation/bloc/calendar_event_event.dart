part of 'calendar_event_bloc.dart';

@freezed
class CalendarEventEvent with _$CalendarEventEvent {
  const factory CalendarEventEvent.getEvents() = _GetEvents;
  const factory CalendarEventEvent.getRangeSelectedEvents(
    DateTime startDate,
    DateTime? endDate,
  ) = _GetRangeSelectedEvents;
}
