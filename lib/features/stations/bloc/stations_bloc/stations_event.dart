import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class StationsEvent extends Equatable {
  const StationsEvent();

  @override
  List<Object> get props => [];
}

class FetchStationsEvent extends StationsEvent {}

class ItemTappedEvent extends StationsEvent {
  final LatLng highlightedLocation;

  const ItemTappedEvent(this.highlightedLocation);

  @override
  List<Object> get props => [highlightedLocation];
}

class GetMyLocationEvent extends StationsEvent {}
