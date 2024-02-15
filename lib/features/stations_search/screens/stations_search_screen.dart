import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:samoilenko_maps_app/features/stations/stations.dart';

import '../../../common/widgets/inputs/ew_text_field_widget.dart';
import '../../stations/bloc/stations_bloc/stations_event.dart';
import '../bloc/search_station_bloc.dart';
import '../widgets/search_results_card.dart';

class StationsSearchScreen extends StatelessWidget {
  const StationsSearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchStationBloc>(
      create: (context) => SearchStationBloc(
        stationsList: context.read<StationsBloc>().state.stationsInfo,
      ),
      child: Scaffold(
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
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: EWTextFieldWidget(),

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
                } else if (searchState is SearchResults) {
                  return searchState.searchResultStations.isEmpty
                      ? const Text('No Results')
                      : Expanded(
                          child: ListView.builder(
                            itemCount: searchState.searchResultStations.length,
                            itemBuilder: (context, index) => SearchResultsCard(
                              searchResultStation: searchState.searchResultStations[index],
                              onTap: () async {
                                _getCoordinatesOfSelectedItem(searchState.searchResultStations[index], context);
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
        ),
      ),
    );
  }

  void _getCoordinatesOfSelectedItem(Station item, BuildContext context) {
    if (item.latitude != null && item.longitude != null) {
      context.read<StationsBloc>().add(
            ItemTappedEvent(
              LatLng(
                item.latitude!,
                item.longitude!,
              ),
            ),
          );

      context.pop();
    }
  }
}
