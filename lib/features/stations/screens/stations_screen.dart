import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme/theme_info.dart';
import '../bloc/stations_bloc/stations_cubit.dart';
import '../widgets/main_map_widget.dart';
import '../widgets/search_bar.dart';

class StationsScreen extends StatelessWidget {
  const StationsScreen({super.key});

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
                        child: const MainMapWidget(),
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
              onPressed: () => {},
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
