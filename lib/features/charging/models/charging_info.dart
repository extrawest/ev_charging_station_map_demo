import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:samoilenko_maps_app/features/wallet/models/history.dart';

part 'charging_info.g.dart';

part 'charging_info.freezed.dart';

@freezed
class ChargingInfo with _$ChargingInfo {
  const factory ChargingInfo({
    int? chargingPercent,
    String? startingTime,
    double? kwh,
    double? cost,
    String? speed,
    String? voltage,
    String? amperage,
    String? tariff,
    List<History>? history,
  }) = _ChargingInfo;

  factory ChargingInfo.fromJson(Map<String, dynamic> json) =>
      _$ChargingInfoFromJson(json);
}
