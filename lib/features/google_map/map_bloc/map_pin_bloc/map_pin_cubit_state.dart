import 'package:freezed_annotation/freezed_annotation.dart';import '../../../stations/models/map_marker/map_marker.dart';part 'map_pin_cubit_state.freezed.dart';@freezedclass MapPinCubitState with _$MapPinCubitState {  const factory MapPinCubitState({required CustomMapMarker? mapMarker}) = _MapPinCubitState;}