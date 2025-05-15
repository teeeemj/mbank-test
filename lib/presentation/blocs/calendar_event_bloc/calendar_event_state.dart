part of 'calendar_event_bloc.dart';

@freezed
class CalendarEventState with _$CalendarEventState {
  const factory CalendarEventState.initial() = CalendarEventsInitial;
  const factory CalendarEventState.loading() = CalendarEventsLoading;
  const factory CalendarEventState.fetched(List<Event> events) =
      CalendarEventsFetched;
  const factory CalendarEventState.error(String message) = CalendarEventsError;
}
