import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/stations/bloc/stations_bloc/stations_cubit.dart';
import '../../features/stations_search/bloc/search_station_bloc.dart';

class MaterialAppWrapper extends StatefulWidget {
  final String title;
  final RouterConfig<Object>? routerConfig;
  final ThemeData? darkTheme;
  final ThemeData? theme;
  final ThemeMode? themeMode;

  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;

  final Iterable<Locale> supportedLocales;

  final Locale? locale;

  const MaterialAppWrapper({
    super.key,
    required this.title,
    this.routerConfig,
    this.darkTheme,
    this.theme,
    this.themeMode,
    this.localizationsDelegates,
    required this.supportedLocales,
    this.locale,
  });

  @override
  State<MaterialAppWrapper> createState() => _MaterialAppWrapperState();
}

class _MaterialAppWrapperState extends State<MaterialAppWrapper> {
  @override
  void initState() {
    super.initState();
    context.read<StationsCubit>().fetchStations();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchStationBloc>(
      create: (context) => SearchStationBloc(
        context.read<StationsCubit>().state.stationsInfo,
      ),
      child: MaterialApp.router(
        title: widget.title,
        routerConfig: widget.routerConfig,
        darkTheme: widget.darkTheme,
        theme: widget.theme,
        themeMode: widget.themeMode,
        localizationsDelegates: widget.localizationsDelegates,
        supportedLocales: widget.supportedLocales,
        locale: widget.locale,
      ),
    );
  }
}
