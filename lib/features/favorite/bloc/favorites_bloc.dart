import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../stations/models/map_marker/map_marker.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  static const String boxName = 'stations';

  FavoritesCubit() : super(FavoritesLoading());

  Future<void> loadFavorites() async {
    emit(FavoritesLoading());
    final box = await Hive.openBox<CustomMapMarker>(boxName);
    final stationsList = box.values.toList();
    await box.close();
    emit(FavoritesLoaded(stations: stationsList));
  }

  Future<void> saveSelectedStation(CustomMapMarker station) async {
    final box = await Hive.openBox<CustomMapMarker>(boxName);
    await box.add(station);

    final stationsList = box.values.toList();

    await box.close();

    emit(FavoritesLoaded(stations: stationsList));
  }
}
