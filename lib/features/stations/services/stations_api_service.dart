import 'package:samoilenko_maps_app/features/stations/models/station.dart';

import '../../../common/services/services.dart';
import '../../../network/api_client.dart';

const int defaultPostsLimit = 20;
const String stationsPath = '/stations.json';

abstract class StationsApiService {
  StationsApiService();

  Future<List<Station>> fetchStations();
}

class StationsApiServiceImpl implements StationsApiService {
  final ApiClient _apiClient;

  StationsApiServiceImpl(this._apiClient);

  @override
  Future<List<Station>> fetchStations() async {
    try {
      final stationsListResponse = await _apiClient.get(
        stationsPath,
      );

      return stationsListResponse.map<Station>((dynamic json) => Station.fromJson(json)).toList();
    } catch (e) {
      log.severe('_fetchStations error: $e');
      rethrow;
    }
  }
}
