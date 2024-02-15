import 'dart:async';import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:samoilenko_maps_app/features/stations/widgets/search_bar.dart';import '../../../generated/assets.gen.dart';import '../../google_map/map_bloc/map_type_bloc/map_cubit.dart';import '../../google_map/utils/cluster_utils.dart';import '../bloc/stations_bloc/stations_bloc.dart';import '../bloc/stations_bloc/stations_state.dart';import '../models/map_marker/map_marker.dart';import '../models/station.dart';import 'map_settings_buttons.dart';class MainMapWidget extends StatefulWidget {  final List<Station> stationsInfo;  final LatLng? myLocation;  const MainMapWidget({    super.key,    required this.stationsInfo,    this.myLocation,  });  @override  State<MainMapWidget> createState() => _MainMapWidgetState();}class _MainMapWidgetState extends State<MainMapWidget> {  Set<Marker> markers = {};  late ClusterManager _manager;  late Marker userLocationMarker;  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();  late LatLng currentLocation;  @override  void initState() {    super.initState();    _manager = _initClusterManager(context);  }  ClusterManager<ClusterItem> _initClusterManager(BuildContext context) {    final List<CustomMapMarker> stations = makeListOfCustomMapMarkers(      stationsInfo: widget.stationsInfo,    );    return ClusterManager<CustomMapMarker>(      stations,      _updateMarkers,      markerBuilder: (cluster) => markerBuilder(context, cluster),    );  }  Future<void> _updateMarkers(Set<Marker> markers) async {    setState(() {      this.markers = markers;    });    if (widget.myLocation != null) {      markers.add(        Marker(          markerId: const MarkerId("currentLocation"),          position: LatLng(widget.myLocation!.latitude, widget.myLocation!.longitude),          icon: await BitmapDescriptor.fromAssetImage(            const ImageConfiguration(devicePixelRatio: 3.2),            Assets.images.myLocation.path,          ),          infoWindow: const InfoWindow(title: "Your Location"),        ),      );    }  }  @override  Widget build(BuildContext context) {    //todo:move above, add mylocation    final CameraPosition kGooglePlex = CameraPosition(      target: LatLng(        widget.stationsInfo[0].latitude ?? 0,        widget.stationsInfo[0].longitude ?? 0,      ),      zoom: 6,    );    final mapTypeVal = context.watch<MapCubit>().state;    return BlocListener<StationsBloc, StationsState>(      listener: (context, state) async {        if (state is SelectedSearchStation) {          final GoogleMapController controller = await _controller.future;          controller.animateCamera(            CameraUpdate.newCameraPosition(              CameraPosition(                target: LatLng(                  state.highlightedLocation!.latitude,                  state.highlightedLocation!.longitude,                ),                zoom: 20.0,              ),            ),          );        }      },      child: Stack(        alignment: Alignment.center,        children: [          GoogleMap(            initialCameraPosition: kGooglePlex,            markers: markers,            ///todo: rewrite to get whole MapType            mapType: mapTypeVal == MapType.normal ? MapType.normal : MapType.satellite,            myLocationButtonEnabled: false,            onMapCreated: (controller) async {              _controller.complete(controller);              _manager.setMapId(controller.mapId);              _initClusterManager(context);            },            onCameraMove: _manager.onCameraMove,            onCameraIdle: _manager.updateMap,          ),          const AppSearchBar(),          Positioned(            bottom: 40,            right: 0,            child: MapSettingsButtons(              onTap: () async {                final myLocation = await context.read<StationsBloc>().getMyLocation();                final GoogleMapController controller = await _controller.future;                if (myLocation != null) {                  controller.animateCamera(                    CameraUpdate.newCameraPosition(                      CameraPosition(                        target: LatLng(myLocation.x, myLocation.y),                        zoom: 6.0,                      ),                    ),                  );                }              },            ),          ),        ],      ),    );  }}