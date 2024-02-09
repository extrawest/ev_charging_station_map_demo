import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../stations/models/station.dart';

part 'search_station_event.dart';
part 'search_station_state.dart';

class SearchStationBloc extends Bloc<SearchStationEvent, SearchStationState> {
  SearchStationBloc(this.stationsList) : super(SearchStationInitial()) {
    on<SearchStationItemFound>(_onSearchChange, transformer: sequential());
    on<SearchStationClearSearch>(_onClearSearch, transformer: sequential());
  }

  final List<Station> stationsList;

  Future<void> _onSearchChange(
    SearchStationEvent event,
    Emitter<SearchStationState> emit,
  ) async {
    List<Station> result = [];
    emit(SearchStationLoading());
    try {
      final searchString = (event as SearchStationItemFound).searchTerm;

      result = [
        ...stationsList.where(
          (element) => element.stationId.toString().contains(searchString),
        ),
      ];

      emit(SearchStationLoaded(searchResultStations: result));
    } catch (e) {
      emit(
        SearchStationError(
          'Search  error :$e',
        ),
      );
    }
  }

  Future<void> _onClearSearch(
    SearchStationEvent event,
    Emitter<SearchStationState> emit,
  ) async {
    try {
      emit(SearchStationInitial());
    } catch (e) {
      emit(
        SearchStationError(
          'Search  error :$e',
        ),
      );
    }
  }
}