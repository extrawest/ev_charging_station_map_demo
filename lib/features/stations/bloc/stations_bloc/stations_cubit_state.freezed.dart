// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stations_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StationsCubitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(String message) error,
    required TResult Function(List<Station> stationsInfo, LatLng? myLocation)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? error,
    TResult? Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(String message)? error,
    TResult Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loadinng value) loading,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loadinng value)? loading,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Error value)? error,
    TResult? Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loadinng value)? loading,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationsCubitStateCopyWith<$Res> {
  factory $StationsCubitStateCopyWith(
          StationsCubitState value, $Res Function(StationsCubitState) then) =
      _$StationsCubitStateCopyWithImpl<$Res, StationsCubitState>;
}

/// @nodoc
class _$StationsCubitStateCopyWithImpl<$Res, $Val extends StationsCubitState>
    implements $StationsCubitStateCopyWith<$Res> {
  _$StationsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$StationsCubitStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'StationsCubitState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(String message) error,
    required TResult Function(List<Station> stationsInfo, LatLng? myLocation)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? error,
    TResult? Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(String message)? error,
    TResult Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loadinng value) loading,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loadinng value)? loading,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Error value)? error,
    TResult? Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loadinng value)? loading,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial extends StationsCubitState {
  const factory Initial() = _$InitialImpl;
  const Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadinngImplCopyWith<$Res> {
  factory _$$LoadinngImplCopyWith(
          _$LoadinngImpl value, $Res Function(_$LoadinngImpl) then) =
      __$$LoadinngImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadinngImplCopyWithImpl<$Res>
    extends _$StationsCubitStateCopyWithImpl<$Res, _$LoadinngImpl>
    implements _$$LoadinngImplCopyWith<$Res> {
  __$$LoadinngImplCopyWithImpl(
      _$LoadinngImpl _value, $Res Function(_$LoadinngImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadinngImpl extends Loadinng {
  const _$LoadinngImpl() : super._();

  @override
  String toString() {
    return 'StationsCubitState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadinngImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(String message) error,
    required TResult Function(List<Station> stationsInfo, LatLng? myLocation)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? error,
    TResult? Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(String message)? error,
    TResult Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loadinng value) loading,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loadinng value)? loading,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Error value)? error,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loadinng value)? loading,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loadinng extends StationsCubitState {
  const factory Loadinng() = _$LoadinngImpl;
  const Loadinng._() : super._();
}

/// @nodoc
abstract class _$$PermissionDeniedImplCopyWith<$Res> {
  factory _$$PermissionDeniedImplCopyWith(_$PermissionDeniedImpl value,
          $Res Function(_$PermissionDeniedImpl) then) =
      __$$PermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedImplCopyWithImpl<$Res>
    extends _$StationsCubitStateCopyWithImpl<$Res, _$PermissionDeniedImpl>
    implements _$$PermissionDeniedImplCopyWith<$Res> {
  __$$PermissionDeniedImplCopyWithImpl(_$PermissionDeniedImpl _value,
      $Res Function(_$PermissionDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionDeniedImpl extends PermissionDenied {
  const _$PermissionDeniedImpl() : super._();

  @override
  String toString() {
    return 'StationsCubitState.permissionDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(String message) error,
    required TResult Function(List<Station> stationsInfo, LatLng? myLocation)
        loaded,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? error,
    TResult? Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(String message)? error,
    TResult Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loadinng value) loading,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loadinng value)? loading,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Error value)? error,
    TResult? Function(Loaded value)? loaded,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loadinng value)? loading,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionDenied extends StationsCubitState {
  const factory PermissionDenied() = _$PermissionDeniedImpl;
  const PermissionDenied._() : super._();
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$StationsCubitStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends Error {
  const _$ErrorImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StationsCubitState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(String message) error,
    required TResult Function(List<Station> stationsInfo, LatLng? myLocation)
        loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? error,
    TResult? Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(String message)? error,
    TResult Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loadinng value) loading,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loadinng value)? loading,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Error value)? error,
    TResult? Function(Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loadinng value)? loading,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error extends StationsCubitState {
  const factory Error({required final String message}) = _$ErrorImpl;
  const Error._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Station> stationsInfo, LatLng? myLocation});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$StationsCubitStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stationsInfo = null,
    Object? myLocation = freezed,
  }) {
    return _then(_$LoadedImpl(
      stationsInfo: null == stationsInfo
          ? _value._stationsInfo
          : stationsInfo // ignore: cast_nullable_to_non_nullable
              as List<Station>,
      myLocation: freezed == myLocation
          ? _value.myLocation
          : myLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl extends Loaded {
  const _$LoadedImpl(
      {required final List<Station> stationsInfo, this.myLocation})
      : _stationsInfo = stationsInfo,
        super._();

  final List<Station> _stationsInfo;
  @override
  List<Station> get stationsInfo {
    if (_stationsInfo is EqualUnmodifiableListView) return _stationsInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stationsInfo);
  }

  @override
  final LatLng? myLocation;

  @override
  String toString() {
    return 'StationsCubitState.loaded(stationsInfo: $stationsInfo, myLocation: $myLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._stationsInfo, _stationsInfo) &&
            (identical(other.myLocation, myLocation) ||
                other.myLocation == myLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_stationsInfo), myLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() permissionDenied,
    required TResult Function(String message) error,
    required TResult Function(List<Station> stationsInfo, LatLng? myLocation)
        loaded,
  }) {
    return loaded(stationsInfo, myLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? permissionDenied,
    TResult? Function(String message)? error,
    TResult? Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
  }) {
    return loaded?.call(stationsInfo, myLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? permissionDenied,
    TResult Function(String message)? error,
    TResult Function(List<Station> stationsInfo, LatLng? myLocation)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stationsInfo, myLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loadinng value) loading,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Error value) error,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loadinng value)? loading,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Error value)? error,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loadinng value)? loading,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Error value)? error,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded extends StationsCubitState {
  const factory Loaded(
      {required final List<Station> stationsInfo,
      final LatLng? myLocation}) = _$LoadedImpl;
  const Loaded._() : super._();

  List<Station> get stationsInfo;
  LatLng? get myLocation;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
