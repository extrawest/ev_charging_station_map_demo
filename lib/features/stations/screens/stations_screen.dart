import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/stations_cubit.dart';
import '../widgets/stations_list.dart';

class StationsScreen extends StatelessWidget {
  const StationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///call bloc before scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stations',
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).canPop(),
        ),
      ),
      body: BlocProvider<StationsCubit>(
        create: (_) => StationsCubit(
          stationsRepository: RepositoryProvider.of(context),
        )..fetchStations(),
        child: const StationsList(),
      ),
      // const PeopleList(),
    );
  }
}
