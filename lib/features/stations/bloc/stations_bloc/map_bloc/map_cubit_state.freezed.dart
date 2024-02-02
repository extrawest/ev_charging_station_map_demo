// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapCubitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MapType mapType) changeMapType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MapType mapType)? changeMapType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MapType mapType)? changeMapType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeMapType value) changeMapType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeMapType value)? changeMapType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeMapType value)? changeMapType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapCubitStateCopyWith<$Res> {
  factory $MapCubitStateCopyWith(
          MapCubitState value, $Res Function(MapCubitState) then) =
      _$MapCubitStateCopyWithImpl<$Res, MapCubitState>;
}

/// @nodoc
class _$MapCubitStateCopyWithImpl<$Res, $Val extends MapCubitState>
    implements $MapCubitStateCopyWith<$Res> {
  _$MapCubitStateCopyWithImpl(this._value, this._then);

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
    extends _$MapCubitStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MapCubitState.initial()';
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
    required TResult Function(MapType mapType) changeMapType,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MapType mapType)? changeMapType,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MapType mapType)? changeMapType,
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
    required TResult Function(ChangeMapType value) changeMapType,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeMapType value)? changeMapType,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeMapType value)? changeMapType,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial extends MapCubitState {
  const factory Initial() = _$InitialImpl;
  const Initial._() : super._();
}

/// @nodoc
abstract class _$$ChangeMapTypeImplCopyWith<$Res> {
  factory _$$ChangeMapTypeImplCopyWith(
          _$ChangeMapTypeImpl value, $Res Function(_$ChangeMapTypeImpl) then) =
      __$$ChangeMapTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MapType mapType});
}

/// @nodoc
class __$$ChangeMapTypeImplCopyWithImpl<$Res>
    extends _$MapCubitStateCopyWithImpl<$Res, _$ChangeMapTypeImpl>
    implements _$$ChangeMapTypeImplCopyWith<$Res> {
  __$$ChangeMapTypeImplCopyWithImpl(
      _$ChangeMapTypeImpl _value, $Res Function(_$ChangeMapTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapType = null,
  }) {
    return _then(_$ChangeMapTypeImpl(
      mapType: null == mapType
          ? _value.mapType
          : mapType // ignore: cast_nullable_to_non_nullable
              as MapType,
    ));
  }
}

/// @nodoc

class _$ChangeMapTypeImpl extends ChangeMapType {
  const _$ChangeMapTypeImpl({required this.mapType}) : super._();

  @override
  final MapType mapType;

  @override
  String toString() {
    return 'MapCubitState.changeMapType(mapType: $mapType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMapTypeImpl &&
            (identical(other.mapType, mapType) || other.mapType == mapType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeMapTypeImplCopyWith<_$ChangeMapTypeImpl> get copyWith =>
      __$$ChangeMapTypeImplCopyWithImpl<_$ChangeMapTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MapType mapType) changeMapType,
  }) {
    return changeMapType(mapType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(MapType mapType)? changeMapType,
  }) {
    return changeMapType?.call(mapType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MapType mapType)? changeMapType,
    required TResult orElse(),
  }) {
    if (changeMapType != null) {
      return changeMapType(mapType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ChangeMapType value) changeMapType,
  }) {
    return changeMapType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(ChangeMapType value)? changeMapType,
  }) {
    return changeMapType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ChangeMapType value)? changeMapType,
    required TResult orElse(),
  }) {
    if (changeMapType != null) {
      return changeMapType(this);
    }
    return orElse();
  }
}

abstract class ChangeMapType extends MapCubitState {
  const factory ChangeMapType({required final MapType mapType}) =
      _$ChangeMapTypeImpl;
  const ChangeMapType._() : super._();

  MapType get mapType;
  @JsonKey(ignore: true)
  _$$ChangeMapTypeImplCopyWith<_$ChangeMapTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
