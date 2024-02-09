import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:samoilenko_maps_app/features/stations/bloc/stations_bloc/stations_cubit.dart';

import '../../../common/widgets/inputs/ew_text_field_wrapper.dart';
import '../bloc/search_station_bloc.dart';
import '../widgets/search_results_card.dart';

class StationsSearchScreen extends StatelessWidget {
  final Completer<GoogleMapController>? mapController;

  const StationsSearchScreen({super.key, this.mapController});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchStationBloc>(
      create: (context) => SearchStationBloc(
        context.read<StationsCubit>().state.stationsInfo,
      ),
      child: BlocBuilder<SearchStationBloc, SearchStationState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              foregroundColor: Colors.black,
              shadowColor: Colors.transparent,
              leading: InkWell(
                onTap: () {
                  context.pop();
                  // context.pop();
                },
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
            body: BlocBuilder<SearchStationBloc, SearchStationState>(
              builder: (context, state) {
                return Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: EWTextFieldWrapper(),

                      //todo:remove later
                      // InputTextWidget(
                      //   controller: _textController,
                      //   // focus: focus,
                      //   onCancelTapCallback: () =>
                      //       searchBloc.add(const SearchStationClearSearch()),
                      //   onChangedCallback: (input) {
                      //     searchBloc.add(
                      //       SearchStationItemFound(
                      //         searchTerm: input,
                      //       ),
                      //     );
                      //   },
                      //   hintText: 'Write here',
                      // ),
                    ),
                    BlocBuilder<SearchStationBloc, SearchStationState>(
                      builder: (context, searchState) {
                        if (searchState is SearchStationLoading) {
                          return const CircularProgressIndicator();
                        } else if (searchState is SearchStationInitial) {
                          return const SizedBox();
                        } else if (searchState is SearchStationError) {
                          return const Center(child: Text('error'));
                        } else if (searchState is SearchStationLoaded) {
                          return searchState.searchResultStations.isEmpty
                              ? const Text('No Results')
                              : Expanded(
                                  child: ListView.builder(
                                    itemCount:
                                        searchState.searchResultStations.length,
                                    itemBuilder: (context, index) =>
                                        SearchResultsCard(
                                      searchResultStation: searchState
                                          .searchResultStations[index],
                                      onTap: () async {
                                        context.pop();

                                        final GoogleMapController controller =
                                            await mapController!.future;

                                        if (searchState
                                                    .searchResultStations[index]
                                                    .latitude !=
                                                null &&
                                            searchState
                                                    .searchResultStations[index]
                                                    .longitude !=
                                                null) {
                                          controller.animateCamera(
                                            CameraUpdate.newCameraPosition(
                                              CameraPosition(
                                                target: LatLng(
                                                  searchState
                                                      .searchResultStations[
                                                          index]
                                                      .latitude!,
                                                  searchState
                                                      .searchResultStations[
                                                          index]
                                                      .longitude!,
                                                ),
                                                zoom: 20.0,
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ],
                );
              },
            ),
            // ),
          );
        },
      ),
    );
  }
}
