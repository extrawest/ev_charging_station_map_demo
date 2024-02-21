// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:samoilenko_maps_app/common/services/favorites_box.dart';
import 'package:url_strategy/url_strategy.dart';

// import '../../firebase_options.dart';
import '../di/injector_module.dart';
import '../utils/app_bloc_observer.dart';
import '../utils/utils.dart';
import 'localization_service.dart';
import 'logger.dart';
import 'theme_box.dart';

class AppBootstrapper {
  Future<void> bootstrap() async {
    await InjectorModule.inject();

    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );

    await LocalizationService().initialize();
    await Hive.initFlutter();
    await ThemeBox().initialize();
    await FavoritesBox().initialize();
    await LoggerBootstrapper().setupLogger();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);

    AppBlocObserver().observe();
    setPathUrlStrategy();
  }
}
