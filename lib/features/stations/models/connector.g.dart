// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connector.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConnectorAdapter extends TypeAdapter<Connector> {
  @override
  final int typeId = 0;

  @override
  Connector read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Connector(
      connectorId: fields[1] as int?,
      enabled: fields[2] as bool,
      id: fields[3] as String?,
      power: fields[4] as double?,
      tariff: fields[5] as double?,
      type: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Connector obj) {
    writer
      ..writeByte(6)
      ..writeByte(1)
      ..write(obj.connectorId)
      ..writeByte(2)
      ..write(obj.enabled)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.power)
      ..writeByte(5)
      ..write(obj.tariff)
      ..writeByte(6)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConnectorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConnectorImpl _$$ConnectorImplFromJson(Map<String, dynamic> json) =>
    _$ConnectorImpl(
      connectorId: json['connectorId'] as int?,
      enabled: json['enabled'] as bool,
      id: json['id'] as String?,
      power: (json['power'] as num?)?.toDouble(),
      tariff: (json['tariff'] as num?)?.toDouble(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ConnectorImplToJson(_$ConnectorImpl instance) =>
    <String, dynamic>{
      'connectorId': instance.connectorId,
      'enabled': instance.enabled,
      'id': instance.id,
      'power': instance.power,
      'tariff': instance.tariff,
      'type': instance.type,
    };
