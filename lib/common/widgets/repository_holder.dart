import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samoilenko_maps_app/features/wallet/repositories/repositories.dart';

import '../../common/di/injector_module.dart';
import '../../features/charging/repositories/charging_repository.dart';
import '../../features/posts/posts.dart';
import '../../features/stations/repositories/stations_repository.dart';

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
        RepositoryProvider<WalletRepository>(
          create: (context) => WalletRepositoryImpl(
            walletApiService: InjectorModule.locator(),
          ),
        ),
        RepositoryProvider<ChargingRepository>(
          create: (context) => ChargingRepositoryImpl(
            chargingApiService: InjectorModule.locator(),
          ),
        ),
      ],
      child: child,
    );
  }
}
