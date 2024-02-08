import 'dart:convert';

import 'package:flutter/services.dart';

import '../../../common/services/services.dart';
import '../models/charging_info.dart';

const String chargingPath = 'assets/charging.json';

abstract class ChargingApiService {
  ChargingApiService();

  Future<ChargingInfo> fetchChargingInfo();
}

class ChargingApiServiceImpl implements ChargingApiService {
  ChargingApiServiceImpl();

  @override
  Future<ChargingInfo> fetchChargingInfo() async {
    try {
      final String jsonString = await rootBundle.loadString(chargingPath);
      final data = await json.decode(jsonString);

      return ChargingInfo.fromJson(data);
    } catch (e) {
      log.severe('_fetch Charging error: $e');
      rethrow;
    }
  }
}
