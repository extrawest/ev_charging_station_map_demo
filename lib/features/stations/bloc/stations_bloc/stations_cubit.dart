import 'dart:async';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:samoilenko_maps_app/features/stations/bloc/stations_bloc/stations_cubit_state.dart';import '../../../../common/services/location_service.dart';import '../../repositories/stations_repository.dart';class StationsCubit extends Cubit<StationsCubitState> {  final StationsRepository stationsRepository;  StationsCubit({    required this.stationsRepository,  }) : super(          const StationsCubitState.initial(),        );  Future<void> fetchStations() async {    emit(const StationsCubitState.loading());    try {      final stations = await stationsRepository.fetchStations();      final myLocation = await loadCurrentLocation();      emit(        StationsCubitState.loaded(          stationsInfo: stations,          myLocation: LatLng(myLocation.latitude, myLocation.longitude),        ),      );    } catch (e) {      emit(StationsCubitState.error(message: e.toString()));    }  }}