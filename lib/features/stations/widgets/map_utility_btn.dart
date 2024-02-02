import 'dart:async';import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import '../../google_map/map_bloc/map_cubit.dart';import '../../theme/theme_info.dart';import '../bloc/stations_bloc/stations_cubit.dart';import 'map_types_widget.dart';class MapUtilityBtns extends StatefulWidget {  final Completer<GoogleMapController> mapController;  const MapUtilityBtns({super.key, required this.mapController});  @override  _MapUtilityBtnsState createState() => _MapUtilityBtnsState();}class _MapUtilityBtnsState extends State<MapUtilityBtns> {  bool itemIndex = true;  @override  Widget build(BuildContext context) {    final mapCubit = context.read<MapCubit>();    return Row(      mainAxisAlignment: MainAxisAlignment.end,      children: [        SizedBox(          width: 46,          height: 46,          child: IconButton(            onPressed: () async {              final myLocation = await context.read<StationsCubit>().getMyLocation();              final GoogleMapController controller = await widget.mapController.future;              if (myLocation != null) {                controller.animateCamera(                  CameraUpdate.newCameraPosition(                    CameraPosition(                      target: LatLng(myLocation.x, myLocation.y),                      zoom: 6.0,                    ),                  ),                );              }            },            style: ButtonStyle(              backgroundColor: MaterialStateProperty.all(white),              shape: MaterialStateProperty.all(                RoundedRectangleBorder(                  borderRadius: BorderRadius.circular(15),                ),              ),            ),            icon: const Icon(              Icons.send_sharp,              color: greyIcon,            ),          ),        ),        SizedBox(          width: 46,          height: 46,          child: IconButton(            onPressed: () async {              showModalBottomSheet<void>(                context: context,                useRootNavigator: true,                backgroundColor: Colors.white,                elevation: 0,                constraints: const BoxConstraints(maxHeight: 300),                builder: (_) {                  return MapTypesWidget(                    applyCallback: (mapType) async {                      mapCubit.defineMapType(mapType);                    },                  );                },              );            },            style: ButtonStyle(              backgroundColor: MaterialStateProperty.all(white),              shape: MaterialStateProperty.all(                RoundedRectangleBorder(                  borderRadius: BorderRadius.circular(15),                ),              ),            ),            icon: const Icon(Icons.settings_outlined, color: greyIcon),          ),        ),      ],    );  }}