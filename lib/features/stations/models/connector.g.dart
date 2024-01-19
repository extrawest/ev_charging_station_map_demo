// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConnectorImpl _$$ConnectorImplFromJson(Map<String, dynamic> json) =>
    _$ConnectorImpl(
      connectorId: json['connector_id'] as int?,
      enabled: json['enabled'] as bool,
      id: json['id'] as String?,
      power: (json['power'] as num?)?.toDouble(),
      tariff: (json['tariff'] as num?)?.toDouble(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ConnectorImplToJson(_$ConnectorImpl instance) =>
    <String, dynamic>{
      'connector_id': instance.connectorId,
      'enabled': instance.enabled,
      'id': instance.id,
      'power': instance.power,
      'tariff': instance.tariff,
      'type': instance.type,
    };
