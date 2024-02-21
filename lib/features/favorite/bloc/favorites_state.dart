part of 'favorites_bloc.dart';

abstract class FavoritesState {
  final List<CustomMapMarker> stations;

  FavoritesState({this.stations = const []});
}

class FavoritesLoading extends FavoritesState {}

class FavoritesLoaded extends FavoritesState {
  FavoritesLoaded({required super.stations});

  FavoritesLoaded copyWith({required List<CustomMapMarker> stations}) {
    return FavoritesLoaded(stations: stations);
  }
}
