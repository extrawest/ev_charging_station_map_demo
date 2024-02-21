import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'connector.g.dart';

part 'connector.freezed.dart';

@HiveType(typeId: 0)
@freezed
class Connector with _$Connector {
  @HiveField(0)
  const factory Connector({
    @HiveField(1) @JsonKey(name: 'connectorId') int? connectorId,
    @HiveField(2) required bool enabled,
    @HiveField(3) String? id,
    @HiveField(4) double? power,
    @HiveField(5) double? tariff,
    @HiveField(6) String? type,
  }) = _Connector;

  factory Connector.fromJson(Map<String, dynamic> json) =>
      _$ConnectorFromJson(json);
}
