import '../models/map_marker/map_marker.dart';

bool isStationAddedToFavorites({
  required List<CustomMapMarker> addedStations,
  required String currentStationName,
}) {
  try {
    addedStations.firstWhere((station) => station.name == currentStationName);
    return true;
  } catch (e) {
    return false;
  }}
