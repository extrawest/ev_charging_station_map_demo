import 'package:samoilenko_maps_app/features/stations/models/station.dart';

import '../services/stations_api_service.dart';

abstract class StationsRepository {
  final StationsApiService stationsApiService;

  StationsRepository(this.stationsApiService);

  Future<List<Station>> fetchStations({int startIndex});
}

class StationsRepositoryImpl implements StationsRepository {
  @override
  final StationsApiService stationsApiService;

  StationsRepositoryImpl({required this.stationsApiService});

  @override
  Future<List<Station>> fetchStations({int startIndex = 0}) async {
    return await stationsApiService.fetchStations();
  }
}
