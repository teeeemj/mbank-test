// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_resp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EventRespModel _$EventRespModelFromJson(Map<String, dynamic> json) {
  return _EventRespModel.fromJson(json);
}

/// @nodoc
mixin _$EventRespModel {
  @JsonKey(name: 'event_name')
  String get eventName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(fromJson: DateUtils.dateFromString, toJson: DateUtils.dateToString)
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this EventRespModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventRespModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventRespModelCopyWith<EventRespModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRespModelCopyWith<$Res> {
  factory $EventRespModelCopyWith(
    EventRespModel value,
    $Res Function(EventRespModel) then,
  ) = _$EventRespModelCopyWithImpl<$Res, EventRespModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'event_name') String eventName,
    String description,
    @JsonKey(fromJson: DateUtils.dateFromString, toJson: DateUtils.dateToString)
    DateTime date,
  });
}

/// @nodoc
class _$EventRespModelCopyWithImpl<$Res, $Val extends EventRespModel>
    implements $EventRespModelCopyWith<$Res> {
  _$EventRespModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventRespModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventName = null,
    Object? description = null,
    Object? date = null,
  }) {
    return _then(
      _value.copyWith(
            eventName:
                null == eventName
                    ? _value.eventName
                    : eventName // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            date:
                null == date
                    ? _value.date
                    : date // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EventRespModelImplCopyWith<$Res>
    implements $EventRespModelCopyWith<$Res> {
  factory _$$EventRespModelImplCopyWith(
    _$EventRespModelImpl value,
    $Res Function(_$EventRespModelImpl) then,
  ) = __$$EventRespModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'event_name') String eventName,
    String description,
    @JsonKey(fromJson: DateUtils.dateFromString, toJson: DateUtils.dateToString)
    DateTime date,
  });
}

/// @nodoc
class __$$EventRespModelImplCopyWithImpl<$Res>
    extends _$EventRespModelCopyWithImpl<$Res, _$EventRespModelImpl>
    implements _$$EventRespModelImplCopyWith<$Res> {
  __$$EventRespModelImplCopyWithImpl(
    _$EventRespModelImpl _value,
    $Res Function(_$EventRespModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventRespModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventName = null,
    Object? description = null,
    Object? date = null,
  }) {
    return _then(
      _$EventRespModelImpl(
        eventName:
            null == eventName
                ? _value.eventName
                : eventName // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        date:
            null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EventRespModelImpl extends _EventRespModel {
  const _$EventRespModelImpl({
    @JsonKey(name: 'event_name') required this.eventName,
    required this.description,
    @JsonKey(fromJson: DateUtils.dateFromString, toJson: DateUtils.dateToString)
    required this.date,
  }) : super._();

  factory _$EventRespModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventRespModelImplFromJson(json);

  @override
  @JsonKey(name: 'event_name')
  final String eventName;
  @override
  final String description;
  @override
  @JsonKey(fromJson: DateUtils.dateFromString, toJson: DateUtils.dateToString)
  final DateTime date;

  @override
  String toString() {
    return 'EventRespModel(eventName: $eventName, description: $description, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventRespModelImpl &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, eventName, description, date);

  /// Create a copy of EventRespModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventRespModelImplCopyWith<_$EventRespModelImpl> get copyWith =>
      __$$EventRespModelImplCopyWithImpl<_$EventRespModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EventRespModelImplToJson(this);
  }
}

abstract class _EventRespModel extends EventRespModel {
  const factory _EventRespModel({
    @JsonKey(name: 'event_name') required final String eventName,
    required final String description,
    @JsonKey(fromJson: DateUtils.dateFromString, toJson: DateUtils.dateToString)
    required final DateTime date,
  }) = _$EventRespModelImpl;
  const _EventRespModel._() : super._();

  factory _EventRespModel.fromJson(Map<String, dynamic> json) =
      _$EventRespModelImpl.fromJson;

  @override
  @JsonKey(name: 'event_name')
  String get eventName;
  @override
  String get description;
  @override
  @JsonKey(fromJson: DateUtils.dateFromString, toJson: DateUtils.dateToString)
  DateTime get date;

  /// Create a copy of EventRespModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventRespModelImplCopyWith<_$EventRespModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
