import 'package:freezed_annotation/freezed_annotation.dart';

import '../../google_map/utils/cluster_utils.dart';
import 'connector.dart';

part 'station.freezed.dart';

part 'station.g.dart';


@freezed
class Station with _$Station {
  const factory Station({
    @JsonKey(name: 'chargePointId') String? chargePointId,
    @JsonKey(name: 'connectors') List<Connector>? connectors,
    @JsonKey(name: 'imageUrls') Map<String, List<String>>? imageUrls,
    double? latitude,
    double? longitude,
    @JsonKey(name: 'stationId') String? stationId,
    StatusVals? status,
    @JsonKey(name: 'tenantId') String? tenantId,
  }) = _Station;

  factory Station.fromJson(Map<String, Object?> json) => _$StationFromJson(json);
}
