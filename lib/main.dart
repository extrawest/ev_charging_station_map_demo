import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:samoilenko_maps_app/firebase_options.dart';
import 'package:samoilenko_maps_app/utils/platform_selector.dart';
import 'package:universal_html/html.dart' as html;
import 'package:universal_html/js.dart' as js;

import 'application.dart';
import 'common/assets.dart';
import 'common/services/services.dart';
import 'common/widgets/widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.web,
    );
  } else {
    await Firebase.initializeApp();
  }

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getApplicationDocumentsDirectory(),
  );
  if (kIsWeb) {
    PlatformSelector().createScriptElement();
    js.context['DEFINE_WEB_KEY'] = const String.fromEnvironment('DEFINE_WEB_KEY');
    html.document.dispatchEvent(html.CustomEvent("dart_loaded"));
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
