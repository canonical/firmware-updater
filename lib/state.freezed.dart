// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FwupdState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases)
        data,
    required TResult Function(FwupdState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FwupdState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FwupdDevice> devices,
            Map<String, List<FwupdRelease>> releases)?
        data,
    TResult Function(FwupdState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FwupdState value) data,
    required TResult Function(FwupdLoadingState value) loading,
    required TResult Function(FwupdErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FwupdState value)? data,
    TResult Function(FwupdLoadingState value)? loading,
    TResult Function(FwupdErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FwupdState value)? data,
    TResult Function(FwupdLoadingState value)? loading,
    TResult Function(FwupdErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FwupdStateCopyWith<$Res> {
  factory $FwupdStateCopyWith(
          FwupdState value, $Res Function(FwupdState) then) =
      _$FwupdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FwupdStateCopyWithImpl<$Res> implements $FwupdStateCopyWith<$Res> {
  _$FwupdStateCopyWithImpl(this._value, this._then);

  final FwupdState _value;
  // ignore: unused_field
  final $Res Function(FwupdState) _then;
}

/// @nodoc
abstract class _$$_FwupdStateCopyWith<$Res> {
  factory _$$_FwupdStateCopyWith(
          _$_FwupdState value, $Res Function(_$_FwupdState) then) =
      __$$_FwupdStateCopyWithImpl<$Res>;
  $Res call(
      {List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases});
}

/// @nodoc
class __$$_FwupdStateCopyWithImpl<$Res> extends _$FwupdStateCopyWithImpl<$Res>
    implements _$$_FwupdStateCopyWith<$Res> {
  __$$_FwupdStateCopyWithImpl(
      _$_FwupdState _value, $Res Function(_$_FwupdState) _then)
      : super(_value, (v) => _then(v as _$_FwupdState));

  @override
  _$_FwupdState get _value => super._value as _$_FwupdState;

  @override
  $Res call({
    Object? devices = freezed,
    Object? releases = freezed,
  }) {
    return _then(_$_FwupdState(
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

class _$_FwupdState extends _FwupdState {
  const _$_FwupdState(
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
    return 'FwupdState.data(devices: $devices, releases: $releases)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FwupdState &&
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
  _$$_FwupdStateCopyWith<_$_FwupdState> get copyWith =>
      __$$_FwupdStateCopyWithImpl<_$_FwupdState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases)
        data,
    required TResult Function(FwupdState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)
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
    TResult Function(FwupdState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)?
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
    TResult Function(FwupdState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)?
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
    required TResult Function(_FwupdState value) data,
    required TResult Function(FwupdLoadingState value) loading,
    required TResult Function(FwupdErrorState value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FwupdState value)? data,
    TResult Function(FwupdLoadingState value)? loading,
    TResult Function(FwupdErrorState value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FwupdState value)? data,
    TResult Function(FwupdLoadingState value)? loading,
    TResult Function(FwupdErrorState value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _FwupdState extends FwupdState {
  const factory _FwupdState(
      {required final List<FwupdDevice> devices,
      required final Map<String, List<FwupdRelease>> releases}) = _$_FwupdState;
  const _FwupdState._() : super._();

  List<FwupdDevice> get devices;
  Map<String, List<FwupdRelease>> get releases;
  @JsonKey(ignore: true)
  _$$_FwupdStateCopyWith<_$_FwupdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FwupdLoadingStateCopyWith<$Res> {
  factory _$$FwupdLoadingStateCopyWith(
          _$FwupdLoadingState value, $Res Function(_$FwupdLoadingState) then) =
      __$$FwupdLoadingStateCopyWithImpl<$Res>;
  $Res call({FwupdState? previous});

  $FwupdStateCopyWith<$Res>? get previous;
}

/// @nodoc
class __$$FwupdLoadingStateCopyWithImpl<$Res>
    extends _$FwupdStateCopyWithImpl<$Res>
    implements _$$FwupdLoadingStateCopyWith<$Res> {
  __$$FwupdLoadingStateCopyWithImpl(
      _$FwupdLoadingState _value, $Res Function(_$FwupdLoadingState) _then)
      : super(_value, (v) => _then(v as _$FwupdLoadingState));

  @override
  _$FwupdLoadingState get _value => super._value as _$FwupdLoadingState;

  @override
  $Res call({
    Object? previous = freezed,
  }) {
    return _then(_$FwupdLoadingState(
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as FwupdState?,
    ));
  }

  @override
  $FwupdStateCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $FwupdStateCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value));
    });
  }
}

/// @nodoc

class _$FwupdLoadingState extends FwupdLoadingState {
  const _$FwupdLoadingState({required this.previous}) : super._();

  @override
  final FwupdState? previous;

  @override
  String toString() {
    return 'FwupdState.loading(previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FwupdLoadingState &&
            const DeepCollectionEquality().equals(other.previous, previous));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(previous));

  @JsonKey(ignore: true)
  @override
  _$$FwupdLoadingStateCopyWith<_$FwupdLoadingState> get copyWith =>
      __$$FwupdLoadingStateCopyWithImpl<_$FwupdLoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases)
        data,
    required TResult Function(FwupdState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)
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
    TResult Function(FwupdState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)?
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
    TResult Function(FwupdState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)?
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
    required TResult Function(_FwupdState value) data,
    required TResult Function(FwupdLoadingState value) loading,
    required TResult Function(FwupdErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FwupdState value)? data,
    TResult Function(FwupdLoadingState value)? loading,
    TResult Function(FwupdErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FwupdState value)? data,
    TResult Function(FwupdLoadingState value)? loading,
    TResult Function(FwupdErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FwupdLoadingState extends FwupdState {
  const factory FwupdLoadingState({required final FwupdState? previous}) =
      _$FwupdLoadingState;
  const FwupdLoadingState._() : super._();

  FwupdState? get previous;
  @JsonKey(ignore: true)
  _$$FwupdLoadingStateCopyWith<_$FwupdLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FwupdErrorStateCopyWith<$Res> {
  factory _$$FwupdErrorStateCopyWith(
          _$FwupdErrorState value, $Res Function(_$FwupdErrorState) then) =
      __$$FwupdErrorStateCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace? stackTrace, FwupdState? previous});

  $FwupdStateCopyWith<$Res>? get previous;
}

/// @nodoc
class __$$FwupdErrorStateCopyWithImpl<$Res>
    extends _$FwupdStateCopyWithImpl<$Res>
    implements _$$FwupdErrorStateCopyWith<$Res> {
  __$$FwupdErrorStateCopyWithImpl(
      _$FwupdErrorState _value, $Res Function(_$FwupdErrorState) _then)
      : super(_value, (v) => _then(v as _$FwupdErrorState));

  @override
  _$FwupdErrorState get _value => super._value as _$FwupdErrorState;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? previous = freezed,
  }) {
    return _then(_$FwupdErrorState(
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
              as FwupdState?,
    ));
  }

  @override
  $FwupdStateCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $FwupdStateCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value));
    });
  }
}

/// @nodoc

class _$FwupdErrorState extends FwupdErrorState {
  const _$FwupdErrorState(
      {required this.error, this.stackTrace, required this.previous})
      : super._();

  @override
  final Object error;
  @override
  final StackTrace? stackTrace;
  @override
  final FwupdState? previous;

  @override
  String toString() {
    return 'FwupdState.error(error: $error, stackTrace: $stackTrace, previous: $previous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FwupdErrorState &&
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
  _$$FwupdErrorStateCopyWith<_$FwupdErrorState> get copyWith =>
      __$$FwupdErrorStateCopyWithImpl<_$FwupdErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FwupdDevice> devices, Map<String, List<FwupdRelease>> releases)
        data,
    required TResult Function(FwupdState? previous) loading,
    required TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)
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
    TResult Function(FwupdState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)?
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
    TResult Function(FwupdState? previous)? loading,
    TResult Function(
            Object error, StackTrace? stackTrace, FwupdState? previous)?
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
    required TResult Function(_FwupdState value) data,
    required TResult Function(FwupdLoadingState value) loading,
    required TResult Function(FwupdErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FwupdState value)? data,
    TResult Function(FwupdLoadingState value)? loading,
    TResult Function(FwupdErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FwupdState value)? data,
    TResult Function(FwupdLoadingState value)? loading,
    TResult Function(FwupdErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FwupdErrorState extends FwupdState {
  const factory FwupdErrorState(
      {required final Object error,
      final StackTrace? stackTrace,
      required final FwupdState? previous}) = _$FwupdErrorState;
  const FwupdErrorState._() : super._();

  Object get error;
  StackTrace? get stackTrace;
  FwupdState? get previous;
  @JsonKey(ignore: true)
  _$$FwupdErrorStateCopyWith<_$FwupdErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
