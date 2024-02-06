import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:samoilenko_maps_app/features/wallet/models/history.dart';

part 'wallet.g.dart';

part 'wallet.freezed.dart';

@freezed
class Wallet with _$Wallet {
  const factory Wallet({
    double? balance,
    List<History>? history,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, dynamic> json) =>
      _$WalletFromJson(json);
}
