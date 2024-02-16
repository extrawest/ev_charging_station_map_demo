part of 'search_station_bloc.dart';

abstract class SearchStationState extends Equatable {
  final List<Station> stationsList;

  const SearchStationState(this.stationsList);

  @override
  List<Object> get props => [stationsList];
}

class SearchStationInitial extends SearchStationState {
  const SearchStationInitial(super.stationsList);
}

class SearchResults extends SearchStationState {
  final List<Station> searchResultStations;

  const SearchResults(super.stationsList, {required this.searchResultStations});

  @override
  List<Object> get props => [searchResultStations];
}

class SearchStationError extends SearchStationState {
  final String error;

  const SearchStationError(this.error, {required List<Station> stationsList}) : super(stationsList);

  @override
  List<Object> get props => [error];
}

class SearchStationLoading extends SearchStationState {
  const SearchStationLoading({required List<Station> stationsList}) : super(stationsList);
}
