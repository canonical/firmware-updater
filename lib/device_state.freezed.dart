// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FwupdDevice device, List<FwupdRelease> releases)
        data,
    required TResult Function(DeviceState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FwupdDevice device, List<FwupdRelease> releases)? data,
    TResult Function(DeviceState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FwupdDevice device, List<FwupdRelease> releases)? data,
    TResult Function(DeviceState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceDataState value) data,
    required TResult Function(DeviceLoadingState value) loading,
    required TResult Function(DeviceErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceDataState value)? data,
    TResult Function(DeviceLoadingState value)? loading,
    TResult Function(DeviceErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceDataState value)? data,
    TResult Function(DeviceLoadingState value)? loading,
    TResult Function(DeviceErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceStateCopyWith<$Res> {
  factory $DeviceStateCopyWith(
          DeviceState value, $Res Function(DeviceState) then) =
      _$DeviceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeviceStateCopyWithImpl<$Res> implements $DeviceStateCopyWith<$Res> {
  _$DeviceStateCopyWithImpl(this._value, this._then);

  final DeviceState _value;
  // ignore: unused_field
  final $Res Function(DeviceState) _then;
}

/// @nodoc
abstract class _$$DeviceDataStateCopyWith<$Res> {
  factory _$$DeviceDataStateCopyWith(
          _$DeviceDataState value, $Res Function(_$DeviceDataState) then) =
      __$$DeviceDataStateCopyWithImpl<$Res>;
  $Res call({FwupdDevice device, List<FwupdRelease> releases});
}

/// @nodoc
class __$$DeviceDataStateCopyWithImpl<$Res>
    extends _$DeviceStateCopyWithImpl<$Res>
    implements _$$DeviceDataStateCopyWith<$Res> {
  __$$DeviceDataStateCopyWithImpl(
      _$DeviceDataState _value, $Res Function(_$DeviceDataState) _then)
      : super(_value, (v) => _then(v as _$DeviceDataState));

  @override
  _$DeviceDataState get _value => super._value as _$DeviceDataState;

  @override
  $Res call({
    Object? device = freezed,
    Object? releases = freezed,
  }) {
    return _then(_$DeviceDataState(
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as FwupdDevice,
      releases: releases == freezed
          ? _value._releases
          : releases // ignore: cast_nullable_to_non_nullable
              as List<FwupdRelease>,
    ));
  }
}

/// @nodoc

class _$DeviceDataState extends DeviceDataState {
  const _$DeviceDataState(
      {required this.device, required final List<FwupdRelease> releases})
      : _releases = releases,
        super._();

  @override
  final FwupdDevice device;
  final List<FwupdRelease> _releases;
  @override
  List<FwupdRelease> get releases {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releases);
  }

  @override
  String toString() {
    return 'DeviceState.data(device: $device, releases: $releases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDataState &&
            const DeepCollectionEquality().equals(other.device, device) &&
            const DeepCollectionEquality().equals(other._releases, _releases));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(device),
      const DeepCollectionEquality().hash(_releases));

  @JsonKey(ignore: true)
  @override
  _$$DeviceDataStateCopyWith<_$DeviceDataState> get copyWith =>
      __$$DeviceDataStateCopyWithImpl<_$DeviceDataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FwupdDevice device, List<FwupdRelease> releases)
        data,
    required TResult Function(DeviceState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)
        error,
  }) {
    return data(device, releases);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FwupdDevice device, List<FwupdRelease> releases)? data,
    TResult Function(DeviceState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)?
        error,
  }) {
    return data?.call(device, releases);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FwupdDevice device, List<FwupdRelease> releases)? data,
    TResult Function(DeviceState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)?
        error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(device, releases);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceDataState value) data,
    required TResult Function(DeviceLoadingState value) loading,
    required TResult Function(DeviceErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceDataState value)? data,
    TResult Function(DeviceLoadingState value)? loading,
    TResult Function(DeviceErrorState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceDataState value)? data,
    TResult Function(DeviceLoadingState value)? loading,
    TResult Function(DeviceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DeviceDataState extends DeviceState {
  const factory DeviceDataState(
      {required final FwupdDevice device,
      required final List<FwupdRelease> releases}) = _$DeviceDataState;
  const DeviceDataState._() : super._();

  FwupdDevice get device;
  List<FwupdRelease> get releases;
  @JsonKey(ignore: true)
  _$$DeviceDataStateCopyWith<_$DeviceDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceLoadingStateCopyWith<$Res> {
  factory _$$DeviceLoadingStateCopyWith(_$DeviceLoadingState value,
          $Res Function(_$DeviceLoadingState) then) =
      __$$DeviceLoadingStateCopyWithImpl<$Res>;
  $Res call({DeviceState? previous});

  $DeviceStateCopyWith<$Res>? get previous;
}

/// @nodoc
class __$$DeviceLoadingStateCopyWithImpl<$Res>
    extends _$DeviceStateCopyWithImpl<$Res>
    implements _$$DeviceLoadingStateCopyWith<$Res> {
  __$$DeviceLoadingStateCopyWithImpl(
      _$DeviceLoadingState _value, $Res Function(_$DeviceLoadingState) _then)
      : super(_value, (v) => _then(v as _$DeviceLoadingState));

  @override
  _$DeviceLoadingState get _value => super._value as _$DeviceLoadingState;

  @override
  $Res call({
    Object? previous = freezed,
  }) {
    return _then(_$DeviceLoadingState(
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as DeviceState?,
    ));
  }

  @override
  $DeviceStateCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $DeviceStateCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value));
    });
  }
}

/// @nodoc

class _$DeviceLoadingState extends DeviceLoadingState {
  const _$DeviceLoadingState({this.previous}) : super._();

  @override
  final DeviceState? previous;

  @override
  String toString() {
    return 'DeviceState.loading(previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceLoadingState &&
            const DeepCollectionEquality().equals(other.previous, previous));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(previous));

  @JsonKey(ignore: true)
  @override
  _$$DeviceLoadingStateCopyWith<_$DeviceLoadingState> get copyWith =>
      __$$DeviceLoadingStateCopyWithImpl<_$DeviceLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FwupdDevice device, List<FwupdRelease> releases)
        data,
    required TResult Function(DeviceState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)
        error,
  }) {
    return loading(previous);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FwupdDevice device, List<FwupdRelease> releases)? data,
    TResult Function(DeviceState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)?
        error,
  }) {
    return loading?.call(previous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FwupdDevice device, List<FwupdRelease> releases)? data,
    TResult Function(DeviceState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(previous);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceDataState value) data,
    required TResult Function(DeviceLoadingState value) loading,
    required TResult Function(DeviceErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceDataState value)? data,
    TResult Function(DeviceLoadingState value)? loading,
    TResult Function(DeviceErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceDataState value)? data,
    TResult Function(DeviceLoadingState value)? loading,
    TResult Function(DeviceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeviceLoadingState extends DeviceState {
  const factory DeviceLoadingState({final DeviceState? previous}) =
      _$DeviceLoadingState;
  const DeviceLoadingState._() : super._();

  DeviceState? get previous;
  @JsonKey(ignore: true)
  _$$DeviceLoadingStateCopyWith<_$DeviceLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceErrorStateCopyWith<$Res> {
  factory _$$DeviceErrorStateCopyWith(
          _$DeviceErrorState value, $Res Function(_$DeviceErrorState) then) =
      __$$DeviceErrorStateCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace? stackTrace, DeviceState? previous});

  $DeviceStateCopyWith<$Res>? get previous;
}

/// @nodoc
class __$$DeviceErrorStateCopyWithImpl<$Res>
    extends _$DeviceStateCopyWithImpl<$Res>
    implements _$$DeviceErrorStateCopyWith<$Res> {
  __$$DeviceErrorStateCopyWithImpl(
      _$DeviceErrorState _value, $Res Function(_$DeviceErrorState) _then)
      : super(_value, (v) => _then(v as _$DeviceErrorState));

  @override
  _$DeviceErrorState get _value => super._value as _$DeviceErrorState;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$DeviceErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as DeviceState?,
    ));
  }

  @override
  $DeviceStateCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $DeviceStateCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value));
    });
  }
}

/// @nodoc

class _$DeviceErrorState extends DeviceErrorState {
  const _$DeviceErrorState(
      {required this.error, this.stackTrace, this.previous})
      : super._();

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;
  @override
  final DeviceState? previous;

  @override
  String toString() {
    return 'DeviceState.error(error: $error, stackTrace: $stackTrace, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceErrorState &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.previous, previous));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace),
      const DeepCollectionEquality().hash(previous));

  @JsonKey(ignore: true)
  @override
  _$$DeviceErrorStateCopyWith<_$DeviceErrorState> get copyWith =>
      __$$DeviceErrorStateCopyWithImpl<_$DeviceErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FwupdDevice device, List<FwupdRelease> releases)
        data,
    required TResult Function(DeviceState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)
        error,
  }) {
    return error(this.error, stackTrace, previous);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FwupdDevice device, List<FwupdRelease> releases)? data,
    TResult Function(DeviceState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)?
        error,
  }) {
    return error?.call(this.error, stackTrace, previous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FwupdDevice device, List<FwupdRelease> releases)? data,
    TResult Function(DeviceState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, DeviceState? previous)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, previous);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeviceDataState value) data,
    required TResult Function(DeviceLoadingState value) loading,
    required TResult Function(DeviceErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DeviceDataState value)? data,
    TResult Function(DeviceLoadingState value)? loading,
    TResult Function(DeviceErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeviceDataState value)? data,
    TResult Function(DeviceLoadingState value)? loading,
    TResult Function(DeviceErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeviceErrorState extends DeviceState {
  const factory DeviceErrorState(
      {required final Object error,
      final StackTrace? stackTrace,
      final DeviceState? previous}) = _$DeviceErrorState;
  const DeviceErrorState._() : super._();

  Object get error;
  StackTrace? get stackTrace;
  DeviceState? get previous;
  @JsonKey(ignore: true)
  _$$DeviceErrorStateCopyWith<_$DeviceErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
