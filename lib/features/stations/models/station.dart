import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../google_map/utils/cluster_utils.dart';
import 'connector.dart';

part 'station.freezed.dart';

part 'station.g.dart';


@HiveType(typeId: 1)
@freezed
class Station with _$Station {
  @HiveField(0)
  const factory Station({
    @HiveField(1) @JsonKey(name: 'chargePointId') String? chargePointId,
    @HiveField(2) @JsonKey(name: 'connectors') List<Connector>? connectors,
    @HiveField(3) @JsonKey(name: 'imageUrls') Map<String, List<String>>? imageUrls,
    @HiveField(4) double? latitude,
    @HiveField(5) double? longitude,
    @HiveField(6) @JsonKey(name: 'stationId') String? stationId,
    @HiveField(7) StatusValues? status,
    @HiveField(8) @JsonKey(name: 'tenantId') String? tenantId,
  }) = _Station;

  factory Station.fromJson(Map<String, Object?> json) => _$StationFromJson(json);
}
