import 'package:freezed_annotation/freezed_annotation.dart';

part 'connector.g.dart';
part 'connector.freezed.dart';


enum ConnectorType {
  TYPE_2_PLUG, CCS_COMBO_1_2, TYPE_1,
}
@freezed
class Connector with _$Connector{
  const factory Connector({
    @JsonKey(name: 'connectorId')
    int? connectorId,
    required bool enabled,
    String? id,
    double? power,
    double? tariff,
    ConnectorType? type,
  }) = _Connector;

  factory Connector.fromJson(Map<String, dynamic> json) => _$ConnectorFromJson(json);
}
