

import '../models/charging_info.dart';
import '../services/charging_api_service.dart';

abstract class ChargingRepository {
  final ChargingApiService chargingApiService;

  ChargingRepository(this.chargingApiService);

  Future<ChargingInfo> fetchChargingInfo();
}

class ChargingRepositoryImpl implements ChargingRepository {
  @override
  final ChargingApiService chargingApiService;

  ChargingRepositoryImpl({required this.chargingApiService});

  @override
  Future<ChargingInfo> fetchChargingInfo() async {
    return await chargingApiService.fetchChargingInfo();
  }
}
