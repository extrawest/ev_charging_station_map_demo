// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationImpl _$$StationImplFromJson(Map<String, dynamic> json) =>
    _$StationImpl(
      chargePointId: json['charge_point_id'] as String?,
      connector: (json['connector'] as List<dynamic>?)
          ?.map((e) => Connector.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrls: (json['image_urls'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      stationId: json['station_id'] as String?,
      status: json['status'] as String?,
      tenantId: json['tenant_id'] as String?,
    );

Map<String, dynamic> _$$StationImplToJson(_$StationImpl instance) =>
    <String, dynamic>{
      'charge_point_id': instance.chargePointId,
      'connector': instance.connector,
      'image_urls': instance.imageUrls,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'station_id': instance.stationId,
      'status': instance.status,
      'tenant_id': instance.tenantId,
    };
