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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Station _$StationFromJson(Map<String, dynamic> json) {
  return _Station.fromJson(json);
}

/// @nodoc
mixin _$Station {
  String? get chargePointId => throw _privateConstructorUsedError;
  List<Connector>? get connector => throw _privateConstructorUsedError;
  Map<String, List<String>> get imageUrls => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get stationId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
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
      {String? chargePointId,
      List<Connector>? connector,
      Map<String, List<String>> imageUrls,
      double? latitude,
      double? longitude,
      String? stationId,
      String? status,
      String? tenantId});
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
    Object? connector = freezed,
    Object? imageUrls = null,
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
      connector: freezed == connector
          ? _value.connector
          : connector // ignore: cast_nullable_to_non_nullable
              as List<Connector>?,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
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
              as String?,
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
      {String? chargePointId,
      List<Connector>? connector,
      Map<String, List<String>> imageUrls,
      double? latitude,
      double? longitude,
      String? stationId,
      String? status,
      String? tenantId});
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
    Object? connector = freezed,
    Object? imageUrls = null,
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
      connector: freezed == connector
          ? _value._connector
          : connector // ignore: cast_nullable_to_non_nullable
              as List<Connector>?,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
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
              as String?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StationImpl implements _Station {
  const _$StationImpl(
      {this.chargePointId,
      final List<Connector>? connector,
      required final Map<String, List<String>> imageUrls,
      this.latitude,
      this.longitude,
      this.stationId,
      this.status,
      this.tenantId})
      : _connector = connector,
        _imageUrls = imageUrls;

  factory _$StationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StationImplFromJson(json);

  @override
  final String? chargePointId;
  final List<Connector>? _connector;
  @override
  List<Connector>? get connector {
    final value = _connector;
    if (value == null) return null;
    if (_connector is EqualUnmodifiableListView) return _connector;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, List<String>> _imageUrls;
  @override
  Map<String, List<String>> get imageUrls {
    if (_imageUrls is EqualUnmodifiableMapView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_imageUrls);
  }

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? stationId;
  @override
  final String? status;
  @override
  final String? tenantId;

  @override
  String toString() {
    return 'Station(chargePointId: $chargePointId, connector: $connector, imageUrls: $imageUrls, latitude: $latitude, longitude: $longitude, stationId: $stationId, status: $status, tenantId: $tenantId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StationImpl &&
            (identical(other.chargePointId, chargePointId) ||
                other.chargePointId == chargePointId) &&
            const DeepCollectionEquality()
                .equals(other._connector, _connector) &&
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
      const DeepCollectionEquality().hash(_connector),
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
      {final String? chargePointId,
      final List<Connector>? connector,
      required final Map<String, List<String>> imageUrls,
      final double? latitude,
      final double? longitude,
      final String? stationId,
      final String? status,
      final String? tenantId}) = _$StationImpl;

  factory _Station.fromJson(Map<String, dynamic> json) = _$StationImpl.fromJson;

  @override
  String? get chargePointId;
  @override
  List<Connector>? get connector;
  @override
  Map<String, List<String>> get imageUrls;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get stationId;
  @override
  String? get status;
  @override
  String? get tenantId;
  @override
  @JsonKey(ignore: true)
  _$$StationImplCopyWith<_$StationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
