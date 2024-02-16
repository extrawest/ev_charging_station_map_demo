import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../stations/models/station.dart';

part 'search_station_event.dart';

part 'search_station_state.dart';

class SearchStationBloc extends Bloc<SearchStationEvent, SearchStationState> {
  SearchStationBloc({required List<Station> stationsList}) : super(SearchStationInitial(stationsList)) {
    on<SearchStationItemFound>(_onSearchChange, transformer: droppable());
    on<SearchStationClearSearch>(_onClearSearch);
  }

  Future<void> _onSearchChange(
    SearchStationItemFound event,
    Emitter<SearchStationState> emit,
  ) async {
    try {
      final searchString = event.searchTerm;

      final result = state.stationsList
          .where(
            (element) => element.stationId?.contains(searchString) ?? false,
          )
          .toList();

      emit(SearchResults(searchResultStations: result, state.stationsList));
    } catch (e) {
      emit(SearchStationError('Search error :$e', stationsList: state.stationsList));
    }
  }

  Future<void> _onClearSearch(
    SearchStationClearSearch event,
    Emitter<SearchStationState> emit,
  ) async {
    try {
      emit(SearchStationInitial(state.stationsList));
    } catch (e) {
      emit(
        SearchStationError('Search  error :$e', stationsList: state.stationsList),
      );
    }
  }
}
