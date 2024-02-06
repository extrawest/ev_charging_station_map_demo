import 'package:freezed_annotation/freezed_annotation.dart';

part 'connector.g.dart';

part 'connector.freezed.dart';

@freezed
class Connector with _$Connector {
  const factory Connector({
    @JsonKey(name: 'connectorId') int? connectorId,
    required bool enabled,
    String? id,
    double? power,
    double? tariff,
    String? type,
  }) = _Connector;

  factory Connector.fromJson(Map<String, dynamic> json) =>
      _$ConnectorFromJson(json);
}
