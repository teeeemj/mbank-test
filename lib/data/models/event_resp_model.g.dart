// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventRespModelImpl _$$EventRespModelImplFromJson(Map<String, dynamic> json) =>
    _$EventRespModelImpl(
      eventName: json['event_name'] as String,
      description: json['description'] as String,
      date: DateUtils.dateFromString(json['date'] as String),
    );

Map<String, dynamic> _$$EventRespModelImplToJson(
  _$EventRespModelImpl instance,
) => <String, dynamic>{
  'event_name': instance.eventName,
  'description': instance.description,
  'date': DateUtils.dateToString(instance.date),
};
