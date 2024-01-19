import 'package:freezed_annotation/freezed_annotation.dart';

import 'connector.dart';

part 'station.freezed.dart';

part 'station.g.dart';

@freezed
class Station with _$Station {
  const factory Station({
    String? chargePointId,
    List<Connector>? connector,
    required Map<String, List<String>> imageUrls,
    double? latitude,
    double? longitude,
    String? stationId,
    String? status,
    String? tenantId,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) => _$StationFromJson(json);
}
