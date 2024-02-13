part of 'search_station_bloc.dart';

abstract class SearchStationEvent extends Equatable {
  const SearchStationEvent();
}

class SearchStationItemFound extends SearchStationEvent {
  final String searchTerm;

  const SearchStationItemFound({
    required this.searchTerm,
  });

  @override
  List<Object> get props => [];
}
class SearchStationItemTapped extends SearchStationEvent {
  final LatLng coordinates;


  const SearchStationItemTapped({
    required this.coordinates,
  });

  @override
  List<Object> get props => [];
}

class SearchStationClearSearch extends SearchStationEvent {
  const SearchStationClearSearch();

  @override
  List<Object> get props => [];
}
