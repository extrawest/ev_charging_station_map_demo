part of 'search_station_bloc.dart';

abstract class SearchStationEvent extends Equatable {
  const SearchStationEvent();
}

class SearchStationItemFound extends SearchStationEvent {
  final String searchTerm;
  final List<Station> stations;

  const SearchStationItemFound({
    required this.stations,
    required this.searchTerm,
  });

  @override
  List<Object> get props => [];
}

class SearchStationClearSearch extends SearchStationEvent {
  const SearchStationClearSearch();

  @override
  List<Object> get props => [];
}
