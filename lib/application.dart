import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/router.dart';
import 'features/stations/bloc/stations_bloc/stations_cubit.dart';
import 'features/stations/services/location_service.dart';
import 'features/theme/theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return BlocProvider<StationsCubit>(
          create: (_) => StationsCubit(
            stationsRepository: RepositoryProvider.of(context),
            locationsService:
                RepositoryProvider.of<GeolocationService>(context),
          ),
          child: MaterialApp.router(
            title: 'Samoilenko Maps App',
            routerConfig: goRouter,
            darkTheme: darkTheme,
            theme: state.themeData,
            themeMode: state.themeMode,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          ),
        );
      },
    );
  }
}
