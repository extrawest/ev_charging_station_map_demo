

part of 'search_station_bloc.dart';

abstract class SearchStationState extends Equatable {
  const SearchStationState();

  @override
  List<Object> get props => [];
}

class SearchStationInitial extends SearchStationState {}

class SearchStationLoaded extends SearchStationState {
  final List<Station> searchResultStations;

  const SearchStationLoaded({required this.searchResultStations});

  @override
  List<Object> get props => [searchResultStations];
}

class SearchStationError extends SearchStationState {
  final String error;

  const SearchStationError(this.error);

  @override
  List<Object> get props => [error];
}

class SearchStationLoading extends SearchStationState {}
