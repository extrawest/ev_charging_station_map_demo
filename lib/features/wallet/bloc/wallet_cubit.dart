import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/wallet.dart';
import '../repositories/wallet_repository.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

class WalletCubit extends Cubit<WalletState> {
  final WalletRepository walletRepository;
  WalletCubit({required this.walletRepository}) : super(const WalletState.initial());
  Future<void> fetchWallet() async {
    emit(const WalletState.loading());
    try {
      final walletResponse = await walletRepository.fetchWallet();

      emit(
        WalletState.loaded(
        walletInfo: walletResponse,
        ),
      );
    } catch (e) {
      emit(WalletState.error(message: e.toString()));
    }
  }
}
