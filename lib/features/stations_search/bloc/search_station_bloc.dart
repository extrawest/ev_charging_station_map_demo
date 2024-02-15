import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/services/logger.dart';
import '../../stations/models/station.dart';

part 'search_station_event.dart';

part 'search_station_state.dart';

class SearchStationBloc extends Bloc<SearchStationEvent, SearchStationState> {
  SearchStationBloc({required List<Station> stationsList}) : super(SearchStationInitial( stationsList)) {
    on<SearchStationItemFound>(_onSearchChange, transformer: droppable());
    on<SearchStationClearSearch>(_onClearSearch);
  }

  Future<void> _onSearchChange(
    SearchStationEvent event,
    Emitter<SearchStationState> emit,
  ) async {
    try {
      final searchString = (event as SearchStationItemFound).searchTerm;
      final itemsList = List<Station>.from(state.stationsList ?? []);

      final result = state.stationsList!
          .where(
            (element) => element.stationId.toString().contains(searchString),
          )
          .toList();

      emit(SearchResults(searchResultStations: result, result));
    } catch (e) {
      emit(SearchStationError( 'Search error :$e' ));
    }
  }

  Future<void> _onClearSearch(
    SearchStationEvent event,
    Emitter<SearchStationState> emit,
  ) async {
    try {
      emit(SearchStationInitial(state.stationsList));
    } catch (e) {
      emit(
        SearchStationError('Search  error :$e'),
      );
    }
  }
}
