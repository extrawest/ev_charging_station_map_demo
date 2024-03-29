// ignore_for_file: avoid_classes_with_only_static_members

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:samoilenko_maps_app/features/stations/services/services.dart';

import '../../common/utils/utils.dart';
import '../../features/charging/services/charging_api_service.dart';
import '../../features/posts/services/services.dart';
import '../../features/profile/services/auth_service.dart';
import '../../features/wallet/services/wallet_api_service.dart';
import '../../network/network.dart';
import '../../network/refresh_token/dio_token_request_retrier.dart';

part '../../network/dio_bootstrapper.dart';

class InjectorModule {
  static GetIt locator = GetIt.asNewInstance();

  static Future<void> inject() async {
    final dio = await _DioBootstrapper().setupDio();
    locator.registerSingleton<Dio>(dio);
    locator.registerFactory<ApiClient>(
      () => ApiClientImpl(
        dio: locator(),
      ),
    );
    locator.registerFactory<PostsApiService>(
      () => PostsApiServiceImpl(
        locator(),
      ),
    );
    locator.registerFactory<StationsApiService>(
      () => StationsApiServiceImpl(
        locator(),
      ),
    );
    locator.registerFactory<WalletApiService>(
      () => WalletApiServiceImpl(
        locator(),
      ),
    );
    locator.registerFactory<AuthService>(
      () => AuthService(),
    );
    locator.registerFactory<ChargingApiService>(
      () => ChargingApiServiceImpl(),
    );
    locator.registerFactory<GeolocationService>(
      () => GeolocationService(),
    );
  }
}
