// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationImpl _$$StationImplFromJson(Map<String, dynamic> json) =>
    _$StationImpl(
      chargePointId: json['chargePointId'] as String?,
      connectors: (json['connectors'] as List<dynamic>?)
          ?.map((e) => Connector.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrls: (json['imageUrls'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      stationId: json['stationId'] as String?,
      status: json['status'] as String?,
      tenantId: json['tenantId'] as String?,
    );

Map<String, dynamic> _$$StationImplToJson(_$StationImpl instance) =>
    <String, dynamic>{
      'chargePointId': instance.chargePointId,
      'connectors': instance.connectors,
      'imageUrls': instance.imageUrls,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'stationId': instance.stationId,
      'status': instance.status,
      'tenantId': instance.tenantId,
    };
