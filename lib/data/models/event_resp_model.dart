import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mbank_test_calendar/core/utils/date_utils.dart';
import 'package:mbank_test_calendar/domain/entities/event.dart';

part 'event_resp_model.freezed.dart';
part 'event_resp_model.g.dart';

@freezed
class EventRespModel with _$EventRespModel {
  const EventRespModel._();

  const factory EventRespModel({
    @JsonKey(name: 'event_name') required String eventName,
    required String description,
    @JsonKey(fromJson: DateUtils.dateFromString, toJson: DateUtils.dateToString)
    required DateTime date,
  }) = _EventRespModel;

  factory EventRespModel.fromJson(Map<String, dynamic> json) =>
      _$EventRespModelFromJson(json);

  Event toEntity() {
    return Event(eventName: eventName, description: description, date: date);
  }
}
