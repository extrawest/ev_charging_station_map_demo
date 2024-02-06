// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryImpl _$$HistoryImplFromJson(Map<String, dynamic> json) =>
    _$HistoryImpl(
      bill: (json['bill'] as num?)?.toDouble(),
      consumedKwh: (json['consumed_kwh'] as num?)?.toDouble(),
      datetimeFinished: json['datetime_finished'] == null
          ? null
          : DateTime.parse(json['datetime_finished'] as String),
      datetimeStarted: json['datetime_started'] == null
          ? null
          : DateTime.parse(json['datetime_started'] as String),
      stationName: json['station_name'] as String?,
    );

Map<String, dynamic> _$$HistoryImplToJson(_$HistoryImpl instance) =>
    <String, dynamic>{
      'bill': instance.bill,
      'consumed_kwh': instance.consumedKwh,
      'datetime_finished': instance.datetimeFinished?.toIso8601String(),
      'datetime_started': instance.datetimeStarted?.toIso8601String(),
      'station_name': instance.stationName,
    };
