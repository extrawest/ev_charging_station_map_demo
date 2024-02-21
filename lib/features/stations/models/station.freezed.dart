// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'station.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
  @HiveField(1)
  @JsonKey(name: 'chargePointId')
  String? get chargePointId => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'connectors')
  List<Connector>? get connectors => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'imageUrls')
  Map<String, List<String>>? get imageUrls =>
      throw _privateConstructorUsedError;
  @HiveField(4)
  double? get latitude => throw _privateConstructorUsedError;
  @HiveField(5)
  double? get longitude => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'stationId')
  String? get stationId => throw _privateConstructorUsedError;
  @HiveField(7)
  StatusValues? get status => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'tenantId')
  String? get tenantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationCopyWith<Station> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationCopyWith<$Res> {
  factory $StationCopyWith(Station value, $Res Function(Station) then) =
      _$StationCopyWithImpl<$Res, Station>;
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: 'chargePointId') String? chargePointId,
      @HiveField(2) @JsonKey(name: 'connectors') List<Connector>? connectors,
      @HiveField(3)
      @JsonKey(name: 'imageUrls')
      Map<String, List<String>>? imageUrls,
      @HiveField(4) double? latitude,
      @HiveField(5) double? longitude,
      @HiveField(6) @JsonKey(name: 'stationId') String? stationId,
      @HiveField(7) StatusValues? status,
      @HiveField(8) @JsonKey(name: 'tenantId') String? tenantId});
}

/// @nodoc
class _$StationCopyWithImpl<$Res, $Val extends Station>
    implements $StationCopyWith<$Res> {
  _$StationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargePointId = freezed,
    Object? connectors = freezed,
    Object? imageUrls = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? stationId = freezed,
    Object? status = freezed,
    Object? tenantId = freezed,
  }) {
    return _then(_value.copyWith(
      chargePointId: freezed == chargePointId
          ? _value.chargePointId
          : chargePointId // ignore: cast_nullable_to_non_nullable
              as String?,
      connectors: freezed == connectors
          ? _value.connectors
          : connectors // ignore: cast_nullable_to_non_nullable
              as List<Connector>?,
      imageUrls: freezed == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      stationId: freezed == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusValues?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StationImplCopyWith<$Res> implements $StationCopyWith<$Res> {
  factory _$$StationImplCopyWith(
          _$StationImpl value, $Res Function(_$StationImpl) then) =
      __$$StationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) @JsonKey(name: 'chargePointId') String? chargePointId,
      @HiveField(2) @JsonKey(name: 'connectors') List<Connector>? connectors,
      @HiveField(3)
      @JsonKey(name: 'imageUrls')
      Map<String, List<String>>? imageUrls,
      @HiveField(4) double? latitude,
      @HiveField(5) double? longitude,
      @HiveField(6) @JsonKey(name: 'stationId') String? stationId,
      @HiveField(7) StatusValues? status,
      @HiveField(8) @JsonKey(name: 'tenantId') String? tenantId});
}

/// @nodoc
class __$$StationImplCopyWithImpl<$Res>
    extends _$StationCopyWithImpl<$Res, _$StationImpl>
    implements _$$StationImplCopyWith<$Res> {
  __$$StationImplCopyWithImpl(
      _$StationImpl _value, $Res Function(_$StationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chargePointId = freezed,
    Object? connectors = freezed,
    Object? imageUrls = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? stationId = freezed,
    Object? status = freezed,
    Object? tenantId = freezed,
  }) {
    return _then(_$StationImpl(
      chargePointId: freezed == chargePointId
          ? _value.chargePointId
          : chargePointId // ignore: cast_nullable_to_non_nullable
              as String?,
      connectors: freezed == connectors
          ? _value._connectors
          : connectors // ignore: cast_nullable_to_non_nullable
              as List<Connector>?,
      imageUrls: freezed == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      stationId: freezed == stationId
          ? _value.stationId
          : stationId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusValues?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$StationImpl implements _Station {
  const _$StationImpl(
      {@HiveField(1) @JsonKey(name: 'chargePointId') this.chargePointId,
      @HiveField(2)
      @JsonKey(name: 'connectors')
      final List<Connector>? connectors,
      @HiveField(3)
      @JsonKey(name: 'imageUrls')
      final Map<String, List<String>>? imageUrls,
      @HiveField(4) this.latitude,
      @HiveField(5) this.longitude,
      @HiveField(6) @JsonKey(name: 'stationId') this.stationId,
      @HiveField(7) this.status,
      @HiveField(8) @JsonKey(name: 'tenantId') this.tenantId})
      : _connectors = connectors,
        _imageUrls = imageUrls;

  factory _$StationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationImplFromJson(json);

  @override
  @HiveField(1)
  @JsonKey(name: 'chargePointId')
  final String? chargePointId;
  final List<Connector>? _connectors;
  @override
  @HiveField(2)
  @JsonKey(name: 'connectors')
  List<Connector>? get connectors {
    final value = _connectors;
    if (value == null) return null;
    if (_connectors is EqualUnmodifiableListView) return _connectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<String>>? _imageUrls;
  @override
  @HiveField(3)
  @JsonKey(name: 'imageUrls')
  Map<String, List<String>>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    if (_imageUrls is EqualUnmodifiableMapView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @HiveField(4)
  final double? latitude;
  @override
  @HiveField(5)
  final double? longitude;
  @override
  @HiveField(6)
  @JsonKey(name: 'stationId')
  final String? stationId;
  @override
  @HiveField(7)
  final StatusValues? status;
  @override
  @HiveField(8)
  @JsonKey(name: 'tenantId')
  final String? tenantId;

  @override
  String toString() {
    return 'Station(chargePointId: $chargePointId, connectors: $connectors, imageUrls: $imageUrls, latitude: $latitude, longitude: $longitude, stationId: $stationId, status: $status, tenantId: $tenantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationImpl &&
            (identical(other.chargePointId, chargePointId) ||
                other.chargePointId == chargePointId) &&
            const DeepCollectionEquality()
                .equals(other._connectors, _connectors) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.stationId, stationId) ||
                other.stationId == stationId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chargePointId,
      const DeepCollectionEquality().hash(_connectors),
      const DeepCollectionEquality().hash(_imageUrls),
      latitude,
      longitude,
      stationId,
      status,
      tenantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      __$$StationImplCopyWithImpl<_$StationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StationImplToJson(
      this,
    );
  }
}

abstract class _Station implements Station {
  const factory _Station(
          {@HiveField(1)
          @JsonKey(name: 'chargePointId')
          final String? chargePointId,
          @HiveField(2)
          @JsonKey(name: 'connectors')
          final List<Connector>? connectors,
          @HiveField(3)
          @JsonKey(name: 'imageUrls')
          final Map<String, List<String>>? imageUrls,
          @HiveField(4) final double? latitude,
          @HiveField(5) final double? longitude,
          @HiveField(6) @JsonKey(name: 'stationId') final String? stationId,
          @HiveField(7) final StatusValues? status,
          @HiveField(8) @JsonKey(name: 'tenantId') final String? tenantId}) =
      _$StationImpl;

  factory _Station.fromJson(Map<String, dynamic> json) = _$StationImpl.fromJson;

  @override
  @HiveField(1)
  @JsonKey(name: 'chargePointId')
  String? get chargePointId;
  @override
  @HiveField(2)
  @JsonKey(name: 'connectors')
  List<Connector>? get connectors;
  @override
  @HiveField(3)
  @JsonKey(name: 'imageUrls')
  Map<String, List<String>>? get imageUrls;
  @override
  @HiveField(4)
  double? get latitude;
  @override
  @HiveField(5)
  double? get longitude;
  @override
  @HiveField(6)
  @JsonKey(name: 'stationId')
  String? get stationId;
  @override
  @HiveField(7)
  StatusValues? get status;
  @override
  @HiveField(8)
  @JsonKey(name: 'tenantId')
  String? get tenantId;
  @override
  @JsonKey(ignore: true)
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
