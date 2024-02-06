
import '../models/wallet.dart';
import '../services/wallet_api_service.dart';

abstract class WalletRepository {
  final WalletApiService walletApiService;

  WalletRepository(this.walletApiService);

  Future<Wallet> fetchWallet();
}

class WalletRepositoryImpl implements WalletRepository {
  @override
  final WalletApiService walletApiService;

  WalletRepositoryImpl({required this.walletApiService});

  @override
  Future<Wallet> fetchWallet() async {
    return await walletApiService.fetchWallet();
  }
}
