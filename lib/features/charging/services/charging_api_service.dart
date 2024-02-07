import 'dart:convert';

import 'package:flutter/services.dart';

import '../../../common/services/services.dart';
import '../models/charging_info.dart';

const String walletPath = '/wallet-info.json';

abstract class ChargingApiService {
  ChargingApiService();

  Future<ChargingInfo> fetchChargingInfo();
}

class ChargingApiServiceImpl implements ChargingApiService {
  ChargingApiServiceImpl();

  @override
  Future<ChargingInfo> fetchChargingInfo() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/charging.json');
      final data = await json.decode(jsonString);

      return ChargingInfo.fromJson(data);
    } catch (e) {
      log.severe('_fetchWallet error: $e');
      rethrow;
    }
  }
}
