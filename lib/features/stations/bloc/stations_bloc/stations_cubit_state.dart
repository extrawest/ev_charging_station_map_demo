import 'package:freezed_annotation/freezed_annotation.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import '../../models/station.dart';part 'stations_cubit_state.freezed.dart';@freezedabstract class StationsCubitState with _$StationsCubitState {  const factory StationsCubitState.initial() = Initial;  const factory StationsCubitState.loading() = Loadinng;  const factory StationsCubitState.permissionDenied() = PermissionDenied;  const factory StationsCubitState.error({required String message}) = Error;  const factory StationsCubitState.loaded({    required List<Station> stationsInfo,    LatLng? myLocation, // Include the user's location here  }) = Loaded;}