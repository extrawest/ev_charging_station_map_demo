// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StationAdapter extends TypeAdapter<Station> {
  @override
  final int typeId = 1;

  @override
  Station read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Station(
      chargePointId: fields[1] as String?,
      connectors: (fields[2] as List?)?.cast<Connector>(),
      imageUrls: (fields[3] as Map?)?.map((dynamic k, dynamic v) =>
          MapEntry(k as String, (v as List).cast<String>())),
      latitude: fields[4] as double?,
      longitude: fields[5] as double?,
      stationId: fields[6] as String?,
      status: fields[7] as StatusValues?,
      tenantId: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Station obj) {
    writer
      ..writeByte(8)
      ..writeByte(1)
      ..write(obj.chargePointId)
      ..writeByte(2)
      ..write(obj.connectors)
      ..writeByte(3)
      ..write(obj.imageUrls)
      ..writeByte(4)
      ..write(obj.latitude)
      ..writeByte(5)
      ..write(obj.longitude)
      ..writeByte(6)
      ..write(obj.stationId)
      ..writeByte(7)
      ..write(obj.status)
      ..writeByte(8)
      ..write(obj.tenantId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      status: $enumDecodeNullable(_$StatusValuesEnumMap, json['status']),
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
      'status': _$StatusValuesEnumMap[instance.status],
      'tenantId': instance.tenantId,
    };

const _$StatusValuesEnumMap = {
  StatusValues.busy: 'busy',
  StatusValues.available: 'available',
  StatusValues.offline: 'offline',
  StatusValues.userLocation: 'userLocation',
};
