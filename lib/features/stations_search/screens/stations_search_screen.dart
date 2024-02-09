import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../common/widgets/inputs/input_text_widget.dart';
import '../../stations/models/station.dart';
import '../../theme/theme_info.dart';
import '../bloc/search_station_bloc.dart';

class StationsSearchScreen extends StatefulWidget {
  final List<Station>? stations;
  final Completer<GoogleMapController>? mapController;

  const StationsSearchScreen({super.key, this.stations,  this.mapController});

  @override
  State<StationsSearchScreen> createState() => _StationsSearchScreenState();
}

class _StationsSearchScreenState extends State<StationsSearchScreen> {
  final focus = FocusNode();
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    focus.requestFocus();
  }

  @override
  void dispose() {
    focus.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchBloc = context.read<SearchStationBloc>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
      ),
      body: BlocBuilder<SearchStationBloc, SearchStationState>(
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: InputTextWidget(
                  controller: _textController,
                  focus: focus,
                  onCancelTapCallback: () =>
                      searchBloc.add(const SearchStationClearSearch()),
                  onChangedCallback: (input) {
                    searchBloc.add(
                      SearchStationItemFound(
                        searchTerm: input,
                        stations: widget.stations ?? [],
                      ),
                    );
                  },
                  hintText: 'Write here',
                ),
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
                                  _buildSearchResultsCard(
                                context,
                                searchResultStation:
                                    searchState.searchResultStations[index],
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
  }

  Card _buildSearchResultsCard(
    BuildContext context, {
    required Station searchResultStation,
  }) {
    return Card(
      elevation: 0,
      child: ListTile(
        title: Text(
          searchResultStation.stationId.toString(),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: greyLabelColor,
                fontSize: 14,
              ),
        ),
        subtitle: Text(
          '${searchResultStation.latitude} / ${searchResultStation.longitude}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        leading: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(60),
            ),
            color: greyBorderColor, // Adjust the radius as needed
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.history,
              color: greyIcon,
            ),
          ),
        ),
        trailing: InkWell(
          onTap: () async {
            Navigator.of(context).pop();

            final GoogleMapController controller = await widget.mapController!.future;

            if(searchResultStation.latitude != null && searchResultStation.longitude != null){
              controller.animateCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target: LatLng(searchResultStation.latitude!, searchResultStation.longitude!),
                    zoom: 20.0,
                  ),
                ),
              );
            }

          },
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: yellowColor, // Adjust the radius as needed
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.send, color: white),
            ),
          ),
        ),
      ),
    );
  }
}
