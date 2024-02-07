// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charging_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChargingInfoImpl _$$ChargingInfoImplFromJson(Map<String, dynamic> json) =>
    _$ChargingInfoImpl(
      chargingPercent: json['charging_percent'] as int?,
      startingTime: json['starting_time'] as String?,
      kwh: (json['kwh'] as num?)?.toDouble(),
      cost: (json['cost'] as num?)?.toDouble(),
      speed: json['speed'] as String?,
      voltage: json['voltage'] as String?,
      amperage: json['amperage'] as String?,
      tariff: json['tariff'] as String?,
      history: (json['history'] as List<dynamic>?)
          ?.map((e) => History.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChargingInfoImplToJson(_$ChargingInfoImpl instance) =>
    <String, dynamic>{
      'charging_percent': instance.chargingPercent,
      'starting_time': instance.startingTime,
      'kwh': instance.kwh,
      'cost': instance.cost,
      'speed': instance.speed,
      'voltage': instance.voltage,
      'amperage': instance.amperage,
      'tariff': instance.tariff,
      'history': instance.history,
    };
