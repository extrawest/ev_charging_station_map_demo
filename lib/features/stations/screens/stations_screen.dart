import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../common/services/location_service.dart';
import '../../theme/theme_info.dart';
import '../bloc/stations_bloc/stations_cubit.dart';
import '../bloc/stations_bloc/stations_cubit_state.dart';
import '../widgets/main_map_widget.dart';
import '../widgets/search_bar.dart';

class StationsScreen extends StatefulWidget {
  const StationsScreen({super.key});

  @override
  State<StationsScreen> createState() => _StationsScreenState();
}

class _StationsScreenState extends State<StationsScreen> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Expanded(
                      child: BlocProvider<StationsCubit>(
                        create: (_) => StationsCubit(
                          stationsRepository: RepositoryProvider.of(context),
                        )..fetchStations(),
                        child: BlocBuilder<StationsCubit, StationsCubitState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              loading: () => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              error: (String message) => Center(
                                child: Text(message),
                              ),
                              loaded: (stationsInfo, myLocation) {
                                return MainMapWidget(
                                  stationsInfo: stationsInfo,
                                  mapController: _controller,
                                  myLocation: myLocation,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const AppSearchBar(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 46,
            height: 46,
            child: FloatingActionButton(
              onPressed: () async {
                final GoogleMapController controller = await _controller.future;
                final myLocation = await loadCurrentLocation();
                controller.animateCamera(
                  CameraUpdate.newCameraPosition(
                    CameraPosition(
                      target: LatLng(myLocation.latitude, myLocation.longitude),
                      zoom: 17.0,
                    ),
                  ),
                );
              },
              backgroundColor: white,
              elevation: 0,
              child: const Icon(
                Icons.send_sharp,
                color: greyIcon,
              ),
            ),
          ),
          SizedBox(
            width: 46,
            height: 46,
            child: FloatingActionButton(
              onPressed: () => {},
              backgroundColor: white,
              elevation: 0,
              child: const Icon(Icons.settings_outlined, color: greyIcon),
            ),
          ),
        ],
      ),
    );
  }
}
