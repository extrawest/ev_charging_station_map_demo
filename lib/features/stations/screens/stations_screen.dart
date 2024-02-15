import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/stations_bloc/stations_bloc.dart';
import '../bloc/stations_bloc/stations_event.dart';
import '../bloc/stations_bloc/stations_state.dart';
import '../widgets/main_map_widget.dart';

class StationsScreen extends StatefulWidget {
  const StationsScreen({super.key});

  @override
  State<StationsScreen> createState() => _StationsScreenState();
}

class _StationsScreenState extends State<StationsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<StationsBloc>().add(FetchStationsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StationsBloc, StationsState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: () {
                  if (state is StationsInitial || state is StationsLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is StationsPermissionDenied) {
                    // The AlertDialog is shown inside the BlocListener
                    return const SizedBox(); // Return an empty container here since the AlertDialog is handled separately.
                  } else if (state is StationsError) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is StationsLoaded || state is SelectedSearchStation) {
                    return MainMapWidget(
                      stationsInfo: state.stationsInfo,
                      myLocation: state.myLocation,
                    );
                  } else {
                    return const SizedBox();
                  }
                }(),
              ),
            ],
          ),
        );
      },
    );
  }
}
