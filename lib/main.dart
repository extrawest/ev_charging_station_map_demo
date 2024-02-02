import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:samoilenko_maps_app/utils/platform_selector.dart';

import 'application.dart';
import 'common/assets.dart';
import 'common/services/services.dart';
import 'common/widgets/widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getApplicationDocumentsDirectory(),
  );
  if (kIsWeb) {
    PlatformSelector().createScriptElement();
  }

  await AppBootstrapper().bootstrap();

  runApp(
    EasyLocalization(
      supportedLocales: LocalizationService.supportedLocales,
      path: translationsFolderPath,
      fallbackLocale: LocalizationService.englishLocale,
      child: const GlobalBlocProvider(
        child: RepositoriesHolder(
          child: Application(),
        ),
      ),
    ),
  );
}
