// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(AppThemeMode mode) set,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(AppThemeMode mode)? set,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(AppThemeMode mode)? set,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_Set value) set,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
    TResult? Function(_Set value)? set,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_Set value)? set,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
    ThemeEvent value,
    $Res Function(ThemeEvent) then,
  ) = _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
    : super(_value, _then);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetImpl implements _Get {
  const _$GetImpl();

  @override
  String toString() {
    return 'ThemeEvent.get()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(AppThemeMode mode) set,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(AppThemeMode mode)? set,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(AppThemeMode mode)? set,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_Set value) set,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
    TResult? Function(_Set value)? set,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_Set value)? set,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements ThemeEvent {
  const factory _Get() = _$GetImpl;
}

/// @nodoc
abstract class _$$SetImplCopyWith<$Res> {
  factory _$$SetImplCopyWith(_$SetImpl value, $Res Function(_$SetImpl) then) =
      __$$SetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppThemeMode mode});
}

/// @nodoc
class __$$SetImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$SetImpl>
    implements _$$SetImplCopyWith<$Res> {
  __$$SetImplCopyWithImpl(_$SetImpl _value, $Res Function(_$SetImpl) _then)
    : super(_value, _then);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? mode = null}) {
    return _then(
      _$SetImpl(
        mode:
            null == mode
                ? _value.mode
                : mode // ignore: cast_nullable_to_non_nullable
                    as AppThemeMode,
      ),
    );
  }
}

/// @nodoc

class _$SetImpl implements _Set {
  const _$SetImpl({required this.mode});

  @override
  final AppThemeMode mode;

  @override
  String toString() {
    return 'ThemeEvent.set(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      __$$SetImplCopyWithImpl<_$SetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(AppThemeMode mode) set,
  }) {
    return set(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(AppThemeMode mode)? set,
  }) {
    return set?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(AppThemeMode mode)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) get,
    required TResult Function(_Set value) set,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Get value)? get,
    TResult? Function(_Set value)? set,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? get,
    TResult Function(_Set value)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class _Set implements ThemeEvent {
  const factory _Set({required final AppThemeMode mode}) = _$SetImpl;

  AppThemeMode get mode;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetImplCopyWith<_$SetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  AppThemeMode get themeMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeMode themeMode) initial,
    required TResult Function(AppThemeMode themeMode) loading,
    required TResult Function(AppThemeMode themeMode) loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppThemeMode themeMode)? initial,
    TResult? Function(AppThemeMode themeMode)? loading,
    TResult? Function(AppThemeMode themeMode)? loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeMode themeMode)? initial,
    TResult Function(AppThemeMode themeMode)? loading,
    TResult Function(AppThemeMode themeMode)? loaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoading value) loading,
    required TResult Function(ThemeLoaded value) loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoading value)? loading,
    TResult? Function(ThemeLoaded value)? loaded,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoading value)? loading,
    TResult Function(ThemeLoaded value)? loaded,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
    ThemeState value,
    $Res Function(ThemeState) then,
  ) = _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({AppThemeMode themeMode});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? themeMode = null}) {
    return _then(
      _value.copyWith(
            themeMode:
                null == themeMode
                    ? _value.themeMode
                    : themeMode // ignore: cast_nullable_to_non_nullable
                        as AppThemeMode,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ThemeInitialImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$ThemeInitialImplCopyWith(
    _$ThemeInitialImpl value,
    $Res Function(_$ThemeInitialImpl) then,
  ) = __$$ThemeInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppThemeMode themeMode});
}

/// @nodoc
class __$$ThemeInitialImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeInitialImpl>
    implements _$$ThemeInitialImplCopyWith<$Res> {
  __$$ThemeInitialImplCopyWithImpl(
    _$ThemeInitialImpl _value,
    $Res Function(_$ThemeInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? themeMode = null}) {
    return _then(
      _$ThemeInitialImpl(
        themeMode:
            null == themeMode
                ? _value.themeMode
                : themeMode // ignore: cast_nullable_to_non_nullable
                    as AppThemeMode,
      ),
    );
  }
}

/// @nodoc

class _$ThemeInitialImpl implements ThemeInitial {
  const _$ThemeInitialImpl({required this.themeMode});

  @override
  final AppThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeState.initial(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeInitialImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeInitialImplCopyWith<_$ThemeInitialImpl> get copyWith =>
      __$$ThemeInitialImplCopyWithImpl<_$ThemeInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeMode themeMode) initial,
    required TResult Function(AppThemeMode themeMode) loading,
    required TResult Function(AppThemeMode themeMode) loaded,
  }) {
    return initial(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppThemeMode themeMode)? initial,
    TResult? Function(AppThemeMode themeMode)? loading,
    TResult? Function(AppThemeMode themeMode)? loaded,
  }) {
    return initial?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeMode themeMode)? initial,
    TResult Function(AppThemeMode themeMode)? loading,
    TResult Function(AppThemeMode themeMode)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoading value) loading,
    required TResult Function(ThemeLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoading value)? loading,
    TResult? Function(ThemeLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoading value)? loading,
    TResult Function(ThemeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ThemeInitial implements ThemeState {
  const factory ThemeInitial({required final AppThemeMode themeMode}) =
      _$ThemeInitialImpl;

  @override
  AppThemeMode get themeMode;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeInitialImplCopyWith<_$ThemeInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeLoadingImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$ThemeLoadingImplCopyWith(
    _$ThemeLoadingImpl value,
    $Res Function(_$ThemeLoadingImpl) then,
  ) = __$$ThemeLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppThemeMode themeMode});
}

/// @nodoc
class __$$ThemeLoadingImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeLoadingImpl>
    implements _$$ThemeLoadingImplCopyWith<$Res> {
  __$$ThemeLoadingImplCopyWithImpl(
    _$ThemeLoadingImpl _value,
    $Res Function(_$ThemeLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? themeMode = null}) {
    return _then(
      _$ThemeLoadingImpl(
        themeMode:
            null == themeMode
                ? _value.themeMode
                : themeMode // ignore: cast_nullable_to_non_nullable
                    as AppThemeMode,
      ),
    );
  }
}

/// @nodoc

class _$ThemeLoadingImpl implements ThemeLoading {
  const _$ThemeLoadingImpl({required this.themeMode});

  @override
  final AppThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeState.loading(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeLoadingImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeLoadingImplCopyWith<_$ThemeLoadingImpl> get copyWith =>
      __$$ThemeLoadingImplCopyWithImpl<_$ThemeLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeMode themeMode) initial,
    required TResult Function(AppThemeMode themeMode) loading,
    required TResult Function(AppThemeMode themeMode) loaded,
  }) {
    return loading(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppThemeMode themeMode)? initial,
    TResult? Function(AppThemeMode themeMode)? loading,
    TResult? Function(AppThemeMode themeMode)? loaded,
  }) {
    return loading?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeMode themeMode)? initial,
    TResult Function(AppThemeMode themeMode)? loading,
    TResult Function(AppThemeMode themeMode)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoading value) loading,
    required TResult Function(ThemeLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoading value)? loading,
    TResult? Function(ThemeLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoading value)? loading,
    TResult Function(ThemeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ThemeLoading implements ThemeState {
  const factory ThemeLoading({required final AppThemeMode themeMode}) =
      _$ThemeLoadingImpl;

  @override
  AppThemeMode get themeMode;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeLoadingImplCopyWith<_$ThemeLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeLoadedImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$ThemeLoadedImplCopyWith(
    _$ThemeLoadedImpl value,
    $Res Function(_$ThemeLoadedImpl) then,
  ) = __$$ThemeLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppThemeMode themeMode});
}

/// @nodoc
class __$$ThemeLoadedImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeLoadedImpl>
    implements _$$ThemeLoadedImplCopyWith<$Res> {
  __$$ThemeLoadedImplCopyWithImpl(
    _$ThemeLoadedImpl _value,
    $Res Function(_$ThemeLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? themeMode = null}) {
    return _then(
      _$ThemeLoadedImpl(
        themeMode:
            null == themeMode
                ? _value.themeMode
                : themeMode // ignore: cast_nullable_to_non_nullable
                    as AppThemeMode,
      ),
    );
  }
}

/// @nodoc

class _$ThemeLoadedImpl implements ThemeLoaded {
  const _$ThemeLoadedImpl({required this.themeMode});

  @override
  final AppThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeState.loaded(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeLoadedImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeLoadedImplCopyWith<_$ThemeLoadedImpl> get copyWith =>
      __$$ThemeLoadedImplCopyWithImpl<_$ThemeLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppThemeMode themeMode) initial,
    required TResult Function(AppThemeMode themeMode) loading,
    required TResult Function(AppThemeMode themeMode) loaded,
  }) {
    return loaded(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppThemeMode themeMode)? initial,
    TResult? Function(AppThemeMode themeMode)? loading,
    TResult? Function(AppThemeMode themeMode)? loaded,
  }) {
    return loaded?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppThemeMode themeMode)? initial,
    TResult Function(AppThemeMode themeMode)? loading,
    TResult Function(AppThemeMode themeMode)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoading value) loading,
    required TResult Function(ThemeLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoading value)? loading,
    TResult? Function(ThemeLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoading value)? loading,
    TResult Function(ThemeLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ThemeLoaded implements ThemeState {
  const factory ThemeLoaded({required final AppThemeMode themeMode}) =
      _$ThemeLoadedImpl;

  @override
  AppThemeMode get themeMode;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeLoadedImplCopyWith<_$ThemeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
