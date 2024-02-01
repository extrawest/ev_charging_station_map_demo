import 'package:flutter/material.dart';import 'package:flutter_bloc/flutter_bloc.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import '../../../common/services/logger.dart';import '../../../generated/assets.gen.dart';import '../../theme/theme_info.dart';import '../bloc/stations_bloc/map_bloc/map_cubit.dart';class MapTypesWidget extends StatefulWidget {  final void Function(MapType mapType)? mapTypeCallback;  final void Function(MapType mapType)? applyCallback;  const MapTypesWidget({super.key, this.mapTypeCallback, this.applyCallback});  @override  State<MapTypesWidget> createState() => _MapTypesWidgetState();}class _MapTypesWidgetState extends State<MapTypesWidget> {  MapType mapType = MapType.normal;  int itemIndex = 0;  @override  void initState() {    mapType = context.read<MapCubit>().state.mapType ?? MapType.normal;    super.initState();  }  @override  Widget build(BuildContext context) {    log.fine('context.read<StationsCubit>()>>> ${context.read<MapCubit>().state.mapType}');    return Padding(      padding: const EdgeInsets.only(top: 10,bottom: 40, left: 20, right: 20),      child: Column(        children: [          Text('Map type', style: Theme.of(context).textTheme.titleSmall),          Expanded(            child: Row(              mainAxisAlignment: MainAxisAlignment.center,              children: [                GestureDetector(                  onTap: () async {                    widget.mapTypeCallback?.call(MapType.normal);                    setState(() {                      mapType = MapType.normal;                    });                  },                  child: MapTypeItem(                    mapType: MapType.normal,                    selectedMapType: mapType,                    imgPath: Assets.images.mapTypeDefault.path,                  ),                ),                const SizedBox(                  width: 40,                ),                GestureDetector(                  onTap: () async {                    widget.mapTypeCallback?.call(                      MapType.satellite,                    );                    setState(() {                      mapType = MapType.satellite;                    });                  },                  child: MapTypeItem(                    mapType: MapType.satellite,                    selectedMapType: mapType,                    imgPath: Assets.images.mapTypeSatelite.path,                  ),                ),              ],            ),          ),          ElevatedButton(            onPressed: () {              widget.applyCallback?.call(mapType);            },            // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(greenAccent)),            child: const Text('Apply', style: TextStyle(color: white)),          ),        ],      ),    );  }}class MapTypeItem extends StatelessWidget {  const MapTypeItem({    super.key,    required this.mapType,    required this.selectedMapType,    required this.imgPath,  });  final MapType mapType;  final MapType selectedMapType;  final String imgPath;  @override  Widget build(BuildContext context) {    return Container(      height: 80,      width: 90,      decoration: BoxDecoration(        border: mapType == selectedMapType            ? Border.all(                color: greenAccent,                width: 3,              )            : Border.all(                color: Colors.transparent,                width: 3,              ),        borderRadius: BorderRadius.circular(10),      ),      child: Padding(        padding: const EdgeInsets.all(4.0),        child: Image.asset(          imgPath,          fit: BoxFit.cover,        ),      ),    );  }}