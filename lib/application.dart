import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/di/injector_module.dart';
import 'common/router.dart';
import 'features/profile/auth_bloc/auth_bloc.dart';
import 'features/stations/bloc/stations_bloc/stations_bloc.dart';
import 'features/theme/theme.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<StationsBloc>(
              create: (_) => StationsBloc(
                stationsRepository: RepositoryProvider.of(context),
                locationsService:  InjectorModule.locator(),
              ),
            ),
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(
                authService: InjectorModule.locator(),
              ),
            ),
          ],
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
