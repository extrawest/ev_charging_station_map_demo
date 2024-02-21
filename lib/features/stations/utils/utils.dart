import '../models/map_marker/map_marker.dart';

bool isStationAddedToFavorites({
  required List<CustomMapMarker> addedStations,
  required String currentStationName,
}) {
  bool isSelected = false;
  for (final i in addedStations) {
    if (currentStationName == i.name) {
      isSelected = true;
    }
  }

  return isSelected;
}
