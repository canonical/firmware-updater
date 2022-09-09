// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firmware_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirmwareState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases)
        data,
    required TResult Function(FirmwareState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FirmwareState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FirmwareState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirmareDataState value) data,
    required TResult Function(FirmwareLoadingState value) loading,
    required TResult Function(FirmwareErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirmareDataState value)? data,
    TResult Function(FirmwareLoadingState value)? loading,
    TResult Function(FirmwareErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirmareDataState value)? data,
    TResult Function(FirmwareLoadingState value)? loading,
    TResult Function(FirmwareErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirmwareStateCopyWith<$Res> {
  factory $FirmwareStateCopyWith(
          FirmwareState value, $Res Function(FirmwareState) then) =
      _$FirmwareStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FirmwareStateCopyWithImpl<$Res>
    implements $FirmwareStateCopyWith<$Res> {
  _$FirmwareStateCopyWithImpl(this._value, this._then);

  final FirmwareState _value;
  // ignore: unused_field
  final $Res Function(FirmwareState) _then;
}

/// @nodoc
abstract class _$$FirmareDataStateCopyWith<$Res> {
  factory _$$FirmareDataStateCopyWith(
          _$FirmareDataState value, $Res Function(_$FirmareDataState) then) =
      __$$FirmareDataStateCopyWithImpl<$Res>;
  $Res call(
      {List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases});
}

/// @nodoc
class __$$FirmareDataStateCopyWithImpl<$Res>
    extends _$FirmwareStateCopyWithImpl<$Res>
    implements _$$FirmareDataStateCopyWith<$Res> {
  __$$FirmareDataStateCopyWithImpl(
      _$FirmareDataState _value, $Res Function(_$FirmareDataState) _then)
      : super(_value, (v) => _then(v as _$FirmareDataState));

  @override
  _$FirmareDataState get _value => super._value as _$FirmareDataState;

  @override
  $Res call({
    Object? devices = freezed,
    Object? releases = freezed,
  }) {
    return _then(_$FirmareDataState(
      devices: devices == freezed
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<FwupdDevice>,
      releases: releases == freezed
          ? _value._releases
          : releases // ignore: cast_nullable_to_non_nullable
              as Map<String, List<FwupdRelease>>,
    ));
  }
}

/// @nodoc

class _$FirmareDataState extends FirmareDataState {
  const _$FirmareDataState(
      {required final List<FwupdDevice> devices,
      required final Map<String, List<FwupdRelease>> releases})
      : _devices = devices,
        _releases = releases,
        super._();

  final List<FwupdDevice> _devices;
  @override
  List<FwupdDevice> get devices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  final Map<String, List<FwupdRelease>> _releases;
  @override
  Map<String, List<FwupdRelease>> get releases {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_releases);
  }

  @override
  String toString() {
    return 'FirmwareState.data(devices: $devices, releases: $releases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirmareDataState &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            const DeepCollectionEquality().equals(other._releases, _releases));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_devices),
      const DeepCollectionEquality().hash(_releases));

  @JsonKey(ignore: true)
  @override
  _$$FirmareDataStateCopyWith<_$FirmareDataState> get copyWith =>
      __$$FirmareDataStateCopyWithImpl<_$FirmareDataState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases)
        data,
    required TResult Function(FirmwareState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)
        error,
  }) {
    return data(devices, releases);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FirmwareState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)?
        error,
  }) {
    return data?.call(devices, releases);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FirmwareState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)?
        error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(devices, releases);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirmareDataState value) data,
    required TResult Function(FirmwareLoadingState value) loading,
    required TResult Function(FirmwareErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirmareDataState value)? data,
    TResult Function(FirmwareLoadingState value)? loading,
    TResult Function(FirmwareErrorState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirmareDataState value)? data,
    TResult Function(FirmwareLoadingState value)? loading,
    TResult Function(FirmwareErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class FirmareDataState extends FirmwareState {
  const factory FirmareDataState(
          {required final List<FwupdDevice> devices,
          required final Map<String, List<FwupdRelease>> releases}) =
      _$FirmareDataState;
  const FirmareDataState._() : super._();

  List<FwupdDevice> get devices;
  Map<String, List<FwupdRelease>> get releases;
  @JsonKey(ignore: true)
  _$$FirmareDataStateCopyWith<_$FirmareDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirmwareLoadingStateCopyWith<$Res> {
  factory _$$FirmwareLoadingStateCopyWith(_$FirmwareLoadingState value,
          $Res Function(_$FirmwareLoadingState) then) =
      __$$FirmwareLoadingStateCopyWithImpl<$Res>;
  $Res call({FirmwareState? previous});

  $FirmwareStateCopyWith<$Res>? get previous;
}

/// @nodoc
class __$$FirmwareLoadingStateCopyWithImpl<$Res>
    extends _$FirmwareStateCopyWithImpl<$Res>
    implements _$$FirmwareLoadingStateCopyWith<$Res> {
  __$$FirmwareLoadingStateCopyWithImpl(_$FirmwareLoadingState _value,
      $Res Function(_$FirmwareLoadingState) _then)
      : super(_value, (v) => _then(v as _$FirmwareLoadingState));

  @override
  _$FirmwareLoadingState get _value => super._value as _$FirmwareLoadingState;

  @override
  $Res call({
    Object? previous = freezed,
  }) {
    return _then(_$FirmwareLoadingState(
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as FirmwareState?,
    ));
  }

  @override
  $FirmwareStateCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $FirmwareStateCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value));
    });
  }
}

/// @nodoc

class _$FirmwareLoadingState extends FirmwareLoadingState {
  const _$FirmwareLoadingState({this.previous}) : super._();

  @override
  final FirmwareState? previous;

  @override
  String toString() {
    return 'FirmwareState.loading(previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirmwareLoadingState &&
            const DeepCollectionEquality().equals(other.previous, previous));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(previous));

  @JsonKey(ignore: true)
  @override
  _$$FirmwareLoadingStateCopyWith<_$FirmwareLoadingState> get copyWith =>
      __$$FirmwareLoadingStateCopyWithImpl<_$FirmwareLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases)
        data,
    required TResult Function(FirmwareState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)
        error,
  }) {
    return loading(previous);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FirmwareState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)?
        error,
  }) {
    return loading?.call(previous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FirmwareState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)?
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
    required TResult Function(FirmareDataState value) data,
    required TResult Function(FirmwareLoadingState value) loading,
    required TResult Function(FirmwareErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirmareDataState value)? data,
    TResult Function(FirmwareLoadingState value)? loading,
    TResult Function(FirmwareErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirmareDataState value)? data,
    TResult Function(FirmwareLoadingState value)? loading,
    TResult Function(FirmwareErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FirmwareLoadingState extends FirmwareState {
  const factory FirmwareLoadingState({final FirmwareState? previous}) =
      _$FirmwareLoadingState;
  const FirmwareLoadingState._() : super._();

  FirmwareState? get previous;
  @JsonKey(ignore: true)
  _$$FirmwareLoadingStateCopyWith<_$FirmwareLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirmwareErrorStateCopyWith<$Res> {
  factory _$$FirmwareErrorStateCopyWith(_$FirmwareErrorState value,
          $Res Function(_$FirmwareErrorState) then) =
      __$$FirmwareErrorStateCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace? stackTrace, FirmwareState? previous});

  $FirmwareStateCopyWith<$Res>? get previous;
}

/// @nodoc
class __$$FirmwareErrorStateCopyWithImpl<$Res>
    extends _$FirmwareStateCopyWithImpl<$Res>
    implements _$$FirmwareErrorStateCopyWith<$Res> {
  __$$FirmwareErrorStateCopyWithImpl(
      _$FirmwareErrorState _value, $Res Function(_$FirmwareErrorState) _then)
      : super(_value, (v) => _then(v as _$FirmwareErrorState));

  @override
  _$FirmwareErrorState get _value => super._value as _$FirmwareErrorState;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$FirmwareErrorState(
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
              as FirmwareState?,
    ));
  }

  @override
  $FirmwareStateCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $FirmwareStateCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value));
    });
  }
}

/// @nodoc

class _$FirmwareErrorState extends FirmwareErrorState {
  const _$FirmwareErrorState(
      {required this.error, this.stackTrace, this.previous})
      : super._();

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;
  @override
  final FirmwareState? previous;

  @override
  String toString() {
    return 'FirmwareState.error(error: $error, stackTrace: $stackTrace, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirmwareErrorState &&
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
  _$$FirmwareErrorStateCopyWith<_$FirmwareErrorState> get copyWith =>
      __$$FirmwareErrorStateCopyWithImpl<_$FirmwareErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases)
        data,
    required TResult Function(FirmwareState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)
        error,
  }) {
    return error(this.error, stackTrace, previous);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FirmwareState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)?
        error,
  }) {
    return error?.call(this.error, stackTrace, previous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FirmwareState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FirmwareState? previous)?
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
    required TResult Function(FirmareDataState value) data,
    required TResult Function(FirmwareLoadingState value) loading,
    required TResult Function(FirmwareErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FirmareDataState value)? data,
    TResult Function(FirmwareLoadingState value)? loading,
    TResult Function(FirmwareErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirmareDataState value)? data,
    TResult Function(FirmwareLoadingState value)? loading,
    TResult Function(FirmwareErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FirmwareErrorState extends FirmwareState {
  const factory FirmwareErrorState(
      {required final Object error,
      final StackTrace? stackTrace,
      final FirmwareState? previous}) = _$FirmwareErrorState;
  const FirmwareErrorState._() : super._();

  Object get error;
  StackTrace? get stackTrace;
  FirmwareState? get previous;
  @JsonKey(ignore: true)
  _$$FirmwareErrorStateCopyWith<_$FirmwareErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
