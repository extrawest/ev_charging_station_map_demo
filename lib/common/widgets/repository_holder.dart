import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/di/injector_module.dart';
import '../../features/posts/posts.dart';
import '../../features/stations/repositories/stations_repository.dart';
import '../../features/stations/services/location_service.dart';

class RepositoriesHolder extends StatelessWidget {
  final Widget child;

  const RepositoriesHolder({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        // put your common repositories and services here
        RepositoryProvider<PostsRepository>(
          create: (context) => PostsRepositoryImpl(
            postsApiService: InjectorModule.locator(),
          ),
        ),
        RepositoryProvider<StationsRepository>(
          create: (context) => StationsRepositoryImpl(
            stationsApiService: InjectorModule.locator(),
          ),
        ),
        RepositoryProvider<GeolocationService>(
          create: (context) => GeolocationService(),
        ),
      ],
      child: child,
    );
  }
}
