import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../common/widgets/dialogs/map_alert_dialog.dart';
import '../../theme/theme_info.dart';
import '../bloc/stations_bloc/stations_cubit.dart';
import '../bloc/stations_bloc/stations_cubit_state.dart';
import '../services/location_service.dart';
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
    return BlocProvider<StationsCubit>(
      create: (_) => StationsCubit(
        stationsRepository: RepositoryProvider.of(context),
        locationsService: RepositoryProvider.of<GeolocationService>(context),
      )..fetchStations(),
      child: BlocBuilder<StationsCubit, StationsCubitState>(
        builder: (context, state) {
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
                            child: BlocListener<StationsCubit, StationsCubitState>(
                              listener: (context, state) async {
                                state.maybeWhen(
                                  permissionDenied: () {
                                    showDialog<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const MapAlertDialog();
                                      },
                                    );
                                  },
                                  orElse: () {},
                                );
                              },
                              child: state.when(
                                initial: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                loading: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                permissionDenied: () {
                                  // The AlertDialog is shown inside the BlocListener
                                  return const SizedBox(); // Return an empty container here since the AlertDialog is handled separately.
                                },
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
                      final myLocation = await context.read<StationsCubit>().getMyLocation();
                      final GoogleMapController controller = await _controller.future;

                      if (myLocation != null) {
                        controller.animateCamera(
                          CameraUpdate.newCameraPosition(
                            CameraPosition(
                              target: LatLng(myLocation.x, myLocation.y),
                              zoom: 6.0,
                            ),
                          ),
                        );
                      }
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
        },
      ),
    );
  }
}
