import '../../../common/services/services.dart';
import '../../../network/api_client.dart';
import '../models/wallet.dart';

const String walletPath = '/wallet-info.json';

abstract class WalletApiService {
  WalletApiService();

  Future<Wallet> fetchWallet();
}

class WalletApiServiceImpl implements WalletApiService {
  final ApiClient _apiClient;

  WalletApiServiceImpl(this._apiClient);

  @override
  Future<Wallet> fetchWallet() async {
    try {
      final walletListResponse = await _apiClient.get(
        walletPath,
      );
      return Wallet.fromJson(walletListResponse);
    } catch (e) {
      log.severe('_fetchWallet error: $e');
      rethrow;
    }
  }
}
