// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Connector _$ConnectorFromJson(Map<String, dynamic> json) {
  return _Connector.fromJson(json);
}

/// @nodoc
mixin _$Connector {
  @HiveField(1)
  @JsonKey(name: 'connectorId')
  int? get connectorId => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get enabled => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(4)
  double? get power => throw _privateConstructorUsedError;
  @HiveField(5)
  double? get tariff => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectorCopyWith<Connector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectorCopyWith<$Res> {
  factory $ConnectorCopyWith(Connector value, $Res Function(Connector) then) =
      _$ConnectorCopyWithImpl<$Res, Connector>;
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: 'connectorId') int? connectorId,
      @HiveField(2) bool enabled,
      @HiveField(3) String? id,
      @HiveField(4) double? power,
      @HiveField(5) double? tariff,
      @HiveField(6) String? type});
}

/// @nodoc
class _$ConnectorCopyWithImpl<$Res, $Val extends Connector>
    implements $ConnectorCopyWith<$Res> {
  _$ConnectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectorId = freezed,
    Object? enabled = null,
    Object? id = freezed,
    Object? power = freezed,
    Object? tariff = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      connectorId: freezed == connectorId
          ? _value.connectorId
          : connectorId // ignore: cast_nullable_to_non_nullable
              as int?,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as double?,
      tariff: freezed == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as double?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectorImplCopyWith<$Res>
    implements $ConnectorCopyWith<$Res> {
  factory _$$ConnectorImplCopyWith(
          _$ConnectorImpl value, $Res Function(_$ConnectorImpl) then) =
      __$$ConnectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: 'connectorId') int? connectorId,
      @HiveField(2) bool enabled,
      @HiveField(3) String? id,
      @HiveField(4) double? power,
      @HiveField(5) double? tariff,
      @HiveField(6) String? type});
}

/// @nodoc
class __$$ConnectorImplCopyWithImpl<$Res>
    extends _$ConnectorCopyWithImpl<$Res, _$ConnectorImpl>
    implements _$$ConnectorImplCopyWith<$Res> {
  __$$ConnectorImplCopyWithImpl(
      _$ConnectorImpl _value, $Res Function(_$ConnectorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectorId = freezed,
    Object? enabled = null,
    Object? id = freezed,
    Object? power = freezed,
    Object? tariff = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ConnectorImpl(
      connectorId: freezed == connectorId
          ? _value.connectorId
          : connectorId // ignore: cast_nullable_to_non_nullable
              as int?,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      power: freezed == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as double?,
      tariff: freezed == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as double?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$ConnectorImpl implements _Connector {
  const _$ConnectorImpl(
      {@HiveField(1) @JsonKey(name: 'connectorId') this.connectorId,
      @HiveField(2) required this.enabled,
      @HiveField(3) this.id,
      @HiveField(4) this.power,
      @HiveField(5) this.tariff,
      @HiveField(6) this.type});

  factory _$ConnectorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectorImplFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: 'connectorId')
  final int? connectorId;
  @override
  @HiveField(2)
  final bool enabled;
  @override
  @HiveField(3)
  final String? id;
  @override
  @HiveField(4)
  final double? power;
  @override
  @HiveField(5)
  final double? tariff;
  @override
  @HiveField(6)
  final String? type;

  @override
  String toString() {
    return 'Connector(connectorId: $connectorId, enabled: $enabled, id: $id, power: $power, tariff: $tariff, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectorImpl &&
            (identical(other.connectorId, connectorId) ||
                other.connectorId == connectorId) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.tariff, tariff) || other.tariff == tariff) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, connectorId, enabled, id, power, tariff, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectorImplCopyWith<_$ConnectorImpl> get copyWith =>
      __$$ConnectorImplCopyWithImpl<_$ConnectorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectorImplToJson(
      this,
    );
  }
}

abstract class _Connector implements Connector {
  const factory _Connector(
      {@HiveField(1) @JsonKey(name: 'connectorId') final int? connectorId,
      @HiveField(2) required final bool enabled,
      @HiveField(3) final String? id,
      @HiveField(4) final double? power,
      @HiveField(5) final double? tariff,
      @HiveField(6) final String? type}) = _$ConnectorImpl;

  factory _Connector.fromJson(Map<String, dynamic> json) =
      _$ConnectorImpl.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: 'connectorId')
  int? get connectorId;
  @override
  @HiveField(2)
  bool get enabled;
  @override
  @HiveField(3)
  String? get id;
  @override
  @HiveField(4)
  double? get power;
  @override
  @HiveField(5)
  double? get tariff;
  @override
  @HiveField(6)
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$ConnectorImplCopyWith<_$ConnectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
