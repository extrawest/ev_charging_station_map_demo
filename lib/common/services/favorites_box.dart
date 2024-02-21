import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../../features/favorite/hive/adapters/connector_adapter.dart';
import '../../features/favorite/hive/adapters/lat_lng_adapter.dart';
import '../../features/favorite/hive/adapters/stations_adapter.dart';

class FavoritesBox {
  Future<void> initialize() async {
    Hive.registerAdapter(StationAdapter());
    Hive.registerAdapter(ConnectorAdapter());
    Hive.registerAdapter(HiveLatLngAdapter());
  }
}
