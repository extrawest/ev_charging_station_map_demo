// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connector.dart';

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
      type: $enumDecodeNullable(_$ConnectorTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ConnectorImplToJson(_$ConnectorImpl instance) =>
    <String, dynamic>{
      'connectorId': instance.connectorId,
      'enabled': instance.enabled,
      'id': instance.id,
      'power': instance.power,
      'tariff': instance.tariff,
      'type': _$ConnectorTypeEnumMap[instance.type],
    };

const _$ConnectorTypeEnumMap = {
  ConnectorType.TYPE_2_PLUG: 'TYPE_2_PLUG',
  ConnectorType.CCS_COMBO_1_2: 'CCS_COMBO_1_2',
  ConnectorType.TYPE_1: 'TYPE_1',
};
