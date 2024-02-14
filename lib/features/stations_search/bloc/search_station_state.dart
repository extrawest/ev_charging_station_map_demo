part of 'search_station_bloc.dart';

abstract class SearchStationState extends Equatable {
  final List<Station>? stationsList;

  const SearchStationState({this.stationsList});

  @override
  List<Object?> get props => [stationsList];
}

class SearchStationInitial extends SearchStationState {
  const SearchStationInitial({super.stationsList});
}

class SearchResults extends SearchStationState {
  final List<Station> searchResultStations;

  const SearchResults({required this.searchResultStations});

  @override
  List<Object> get props => [searchResultStations];
}

class SelectedSearchStation extends SearchStationState {
  final LatLng coordinates;

  const SelectedSearchStation({required this.coordinates});

  @override
  List<Object> get props => [coordinates];
}

class SearchStationError extends SearchStationState {
  final String error;

  const SearchStationError(this.error);

  @override
  List<Object> get props => [error];
}

class SearchStationLoading extends SearchStationState {}
