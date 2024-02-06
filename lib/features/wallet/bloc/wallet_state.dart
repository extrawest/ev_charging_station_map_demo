part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;

  const factory WalletState.loading() = Loadinng;


  const factory WalletState.error({required String message}) = Error;

  const factory WalletState.loaded({
    required Wallet walletInfo,
  }) = Loaded;
}
