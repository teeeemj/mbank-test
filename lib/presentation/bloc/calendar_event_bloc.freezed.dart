// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CalendarEventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(DateTime startDate, DateTime? endDate)
    getRangeSelectedEvents,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(DateTime startDate, DateTime? endDate)?
    getRangeSelectedEvents,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(DateTime startDate, DateTime? endDate)?
    getRangeSelectedEvents,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_GetRangeSelectedEvents value)
    getRangeSelectedEvents,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_GetRangeSelectedEvents value)? getRangeSelectedEvents,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_GetRangeSelectedEvents value)? getRangeSelectedEvents,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventEventCopyWith<$Res> {
  factory $CalendarEventEventCopyWith(
    CalendarEventEvent value,
    $Res Function(CalendarEventEvent) then,
  ) = _$CalendarEventEventCopyWithImpl<$Res, CalendarEventEvent>;
}

/// @nodoc
class _$CalendarEventEventCopyWithImpl<$Res, $Val extends CalendarEventEvent>
    implements $CalendarEventEventCopyWith<$Res> {
  _$CalendarEventEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarEventEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetEventsImplCopyWith<$Res> {
  factory _$$GetEventsImplCopyWith(
    _$GetEventsImpl value,
    $Res Function(_$GetEventsImpl) then,
  ) = __$$GetEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEventsImplCopyWithImpl<$Res>
    extends _$CalendarEventEventCopyWithImpl<$Res, _$GetEventsImpl>
    implements _$$GetEventsImplCopyWith<$Res> {
  __$$GetEventsImplCopyWithImpl(
    _$GetEventsImpl _value,
    $Res Function(_$GetEventsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CalendarEventEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetEventsImpl implements _GetEvents {
  const _$GetEventsImpl();

  @override
  String toString() {
    return 'CalendarEventEvent.getEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(DateTime startDate, DateTime? endDate)
    getRangeSelectedEvents,
  }) {
    return getEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(DateTime startDate, DateTime? endDate)?
    getRangeSelectedEvents,
  }) {
    return getEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(DateTime startDate, DateTime? endDate)?
    getRangeSelectedEvents,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_GetRangeSelectedEvents value)
    getRangeSelectedEvents,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_GetRangeSelectedEvents value)? getRangeSelectedEvents,
  }) {
    return getEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_GetRangeSelectedEvents value)? getRangeSelectedEvents,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class _GetEvents implements CalendarEventEvent {
  const factory _GetEvents() = _$GetEventsImpl;
}

/// @nodoc
abstract class _$$GetRangeSelectedEventsImplCopyWith<$Res> {
  factory _$$GetRangeSelectedEventsImplCopyWith(
    _$GetRangeSelectedEventsImpl value,
    $Res Function(_$GetRangeSelectedEventsImpl) then,
  ) = __$$GetRangeSelectedEventsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate, DateTime? endDate});
}

/// @nodoc
class __$$GetRangeSelectedEventsImplCopyWithImpl<$Res>
    extends _$CalendarEventEventCopyWithImpl<$Res, _$GetRangeSelectedEventsImpl>
    implements _$$GetRangeSelectedEventsImplCopyWith<$Res> {
  __$$GetRangeSelectedEventsImplCopyWithImpl(
    _$GetRangeSelectedEventsImpl _value,
    $Res Function(_$GetRangeSelectedEventsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CalendarEventEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? startDate = null, Object? endDate = freezed}) {
    return _then(
      _$GetRangeSelectedEventsImpl(
        null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                as DateTime,
        freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$GetRangeSelectedEventsImpl implements _GetRangeSelectedEvents {
  const _$GetRangeSelectedEventsImpl(this.startDate, this.endDate);

  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'CalendarEventEvent.getRangeSelectedEvents(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRangeSelectedEventsImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  /// Create a copy of CalendarEventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRangeSelectedEventsImplCopyWith<_$GetRangeSelectedEventsImpl>
  get copyWith =>
      __$$GetRangeSelectedEventsImplCopyWithImpl<_$GetRangeSelectedEventsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEvents,
    required TResult Function(DateTime startDate, DateTime? endDate)
    getRangeSelectedEvents,
  }) {
    return getRangeSelectedEvents(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEvents,
    TResult? Function(DateTime startDate, DateTime? endDate)?
    getRangeSelectedEvents,
  }) {
    return getRangeSelectedEvents?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEvents,
    TResult Function(DateTime startDate, DateTime? endDate)?
    getRangeSelectedEvents,
    required TResult orElse(),
  }) {
    if (getRangeSelectedEvents != null) {
      return getRangeSelectedEvents(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_GetRangeSelectedEvents value)
    getRangeSelectedEvents,
  }) {
    return getRangeSelectedEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_GetRangeSelectedEvents value)? getRangeSelectedEvents,
  }) {
    return getRangeSelectedEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_GetRangeSelectedEvents value)? getRangeSelectedEvents,
    required TResult orElse(),
  }) {
    if (getRangeSelectedEvents != null) {
      return getRangeSelectedEvents(this);
    }
    return orElse();
  }
}

abstract class _GetRangeSelectedEvents implements CalendarEventEvent {
  const factory _GetRangeSelectedEvents(
    final DateTime startDate,
    final DateTime? endDate,
  ) = _$GetRangeSelectedEventsImpl;

  DateTime get startDate;
  DateTime? get endDate;

  /// Create a copy of CalendarEventEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRangeSelectedEventsImplCopyWith<_$GetRangeSelectedEventsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalendarEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) fetched,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? fetched,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? fetched,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarEventsInitial value) initial,
    required TResult Function(CalendarEventsLoading value) loading,
    required TResult Function(CalendarEventsFetched value) fetched,
    required TResult Function(CalendarEventsError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarEventsInitial value)? initial,
    TResult? Function(CalendarEventsLoading value)? loading,
    TResult? Function(CalendarEventsFetched value)? fetched,
    TResult? Function(CalendarEventsError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarEventsInitial value)? initial,
    TResult Function(CalendarEventsLoading value)? loading,
    TResult Function(CalendarEventsFetched value)? fetched,
    TResult Function(CalendarEventsError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarEventStateCopyWith<$Res> {
  factory $CalendarEventStateCopyWith(
    CalendarEventState value,
    $Res Function(CalendarEventState) then,
  ) = _$CalendarEventStateCopyWithImpl<$Res, CalendarEventState>;
}

/// @nodoc
class _$CalendarEventStateCopyWithImpl<$Res, $Val extends CalendarEventState>
    implements $CalendarEventStateCopyWith<$Res> {
  _$CalendarEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CalendarEventsInitialImplCopyWith<$Res> {
  factory _$$CalendarEventsInitialImplCopyWith(
    _$CalendarEventsInitialImpl value,
    $Res Function(_$CalendarEventsInitialImpl) then,
  ) = __$$CalendarEventsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarEventsInitialImplCopyWithImpl<$Res>
    extends _$CalendarEventStateCopyWithImpl<$Res, _$CalendarEventsInitialImpl>
    implements _$$CalendarEventsInitialImplCopyWith<$Res> {
  __$$CalendarEventsInitialImplCopyWithImpl(
    _$CalendarEventsInitialImpl _value,
    $Res Function(_$CalendarEventsInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CalendarEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalendarEventsInitialImpl implements CalendarEventsInitial {
  const _$CalendarEventsInitialImpl();

  @override
  String toString() {
    return 'CalendarEventState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) fetched,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? fetched,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? fetched,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarEventsInitial value) initial,
    required TResult Function(CalendarEventsLoading value) loading,
    required TResult Function(CalendarEventsFetched value) fetched,
    required TResult Function(CalendarEventsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarEventsInitial value)? initial,
    TResult? Function(CalendarEventsLoading value)? loading,
    TResult? Function(CalendarEventsFetched value)? fetched,
    TResult? Function(CalendarEventsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarEventsInitial value)? initial,
    TResult Function(CalendarEventsLoading value)? loading,
    TResult Function(CalendarEventsFetched value)? fetched,
    TResult Function(CalendarEventsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CalendarEventsInitial implements CalendarEventState {
  const factory CalendarEventsInitial() = _$CalendarEventsInitialImpl;
}

/// @nodoc
abstract class _$$CalendarEventsLoadingImplCopyWith<$Res> {
  factory _$$CalendarEventsLoadingImplCopyWith(
    _$CalendarEventsLoadingImpl value,
    $Res Function(_$CalendarEventsLoadingImpl) then,
  ) = __$$CalendarEventsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalendarEventsLoadingImplCopyWithImpl<$Res>
    extends _$CalendarEventStateCopyWithImpl<$Res, _$CalendarEventsLoadingImpl>
    implements _$$CalendarEventsLoadingImplCopyWith<$Res> {
  __$$CalendarEventsLoadingImplCopyWithImpl(
    _$CalendarEventsLoadingImpl _value,
    $Res Function(_$CalendarEventsLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CalendarEventState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CalendarEventsLoadingImpl implements CalendarEventsLoading {
  const _$CalendarEventsLoadingImpl();

  @override
  String toString() {
    return 'CalendarEventState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) fetched,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? fetched,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? fetched,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarEventsInitial value) initial,
    required TResult Function(CalendarEventsLoading value) loading,
    required TResult Function(CalendarEventsFetched value) fetched,
    required TResult Function(CalendarEventsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarEventsInitial value)? initial,
    TResult? Function(CalendarEventsLoading value)? loading,
    TResult? Function(CalendarEventsFetched value)? fetched,
    TResult? Function(CalendarEventsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarEventsInitial value)? initial,
    TResult Function(CalendarEventsLoading value)? loading,
    TResult Function(CalendarEventsFetched value)? fetched,
    TResult Function(CalendarEventsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CalendarEventsLoading implements CalendarEventState {
  const factory CalendarEventsLoading() = _$CalendarEventsLoadingImpl;
}

/// @nodoc
abstract class _$$CalendarEventsFetchedImplCopyWith<$Res> {
  factory _$$CalendarEventsFetchedImplCopyWith(
    _$CalendarEventsFetchedImpl value,
    $Res Function(_$CalendarEventsFetchedImpl) then,
  ) = __$$CalendarEventsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Event> events});
}

/// @nodoc
class __$$CalendarEventsFetchedImplCopyWithImpl<$Res>
    extends _$CalendarEventStateCopyWithImpl<$Res, _$CalendarEventsFetchedImpl>
    implements _$$CalendarEventsFetchedImplCopyWith<$Res> {
  __$$CalendarEventsFetchedImplCopyWithImpl(
    _$CalendarEventsFetchedImpl _value,
    $Res Function(_$CalendarEventsFetchedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CalendarEventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? events = null}) {
    return _then(
      _$CalendarEventsFetchedImpl(
        null == events
            ? _value._events
            : events // ignore: cast_nullable_to_non_nullable
                as List<Event>,
      ),
    );
  }
}

/// @nodoc

class _$CalendarEventsFetchedImpl implements CalendarEventsFetched {
  const _$CalendarEventsFetchedImpl(final List<Event> events)
    : _events = events;

  final List<Event> _events;
  @override
  List<Event> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'CalendarEventState.fetched(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventsFetchedImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  /// Create a copy of CalendarEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEventsFetchedImplCopyWith<_$CalendarEventsFetchedImpl>
  get copyWith =>
      __$$CalendarEventsFetchedImplCopyWithImpl<_$CalendarEventsFetchedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) fetched,
    required TResult Function(String message) error,
  }) {
    return fetched(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? fetched,
    TResult? Function(String message)? error,
  }) {
    return fetched?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? fetched,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarEventsInitial value) initial,
    required TResult Function(CalendarEventsLoading value) loading,
    required TResult Function(CalendarEventsFetched value) fetched,
    required TResult Function(CalendarEventsError value) error,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarEventsInitial value)? initial,
    TResult? Function(CalendarEventsLoading value)? loading,
    TResult? Function(CalendarEventsFetched value)? fetched,
    TResult? Function(CalendarEventsError value)? error,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarEventsInitial value)? initial,
    TResult Function(CalendarEventsLoading value)? loading,
    TResult Function(CalendarEventsFetched value)? fetched,
    TResult Function(CalendarEventsError value)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class CalendarEventsFetched implements CalendarEventState {
  const factory CalendarEventsFetched(final List<Event> events) =
      _$CalendarEventsFetchedImpl;

  List<Event> get events;

  /// Create a copy of CalendarEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarEventsFetchedImplCopyWith<_$CalendarEventsFetchedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalendarEventsErrorImplCopyWith<$Res> {
  factory _$$CalendarEventsErrorImplCopyWith(
    _$CalendarEventsErrorImpl value,
    $Res Function(_$CalendarEventsErrorImpl) then,
  ) = __$$CalendarEventsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CalendarEventsErrorImplCopyWithImpl<$Res>
    extends _$CalendarEventStateCopyWithImpl<$Res, _$CalendarEventsErrorImpl>
    implements _$$CalendarEventsErrorImplCopyWith<$Res> {
  __$$CalendarEventsErrorImplCopyWithImpl(
    _$CalendarEventsErrorImpl _value,
    $Res Function(_$CalendarEventsErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CalendarEventState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CalendarEventsErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$CalendarEventsErrorImpl implements CalendarEventsError {
  const _$CalendarEventsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CalendarEventState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarEventsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CalendarEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarEventsErrorImplCopyWith<_$CalendarEventsErrorImpl> get copyWith =>
      __$$CalendarEventsErrorImplCopyWithImpl<_$CalendarEventsErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Event> events) fetched,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Event> events)? fetched,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Event> events)? fetched,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalendarEventsInitial value) initial,
    required TResult Function(CalendarEventsLoading value) loading,
    required TResult Function(CalendarEventsFetched value) fetched,
    required TResult Function(CalendarEventsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalendarEventsInitial value)? initial,
    TResult? Function(CalendarEventsLoading value)? loading,
    TResult? Function(CalendarEventsFetched value)? fetched,
    TResult? Function(CalendarEventsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalendarEventsInitial value)? initial,
    TResult Function(CalendarEventsLoading value)? loading,
    TResult Function(CalendarEventsFetched value)? fetched,
    TResult Function(CalendarEventsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CalendarEventsError implements CalendarEventState {
  const factory CalendarEventsError(final String message) =
      _$CalendarEventsErrorImpl;

  String get message;

  /// Create a copy of CalendarEventState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarEventsErrorImplCopyWith<_$CalendarEventsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
