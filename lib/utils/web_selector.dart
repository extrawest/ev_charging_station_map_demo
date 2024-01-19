import 'package:samoilenko_maps_app/utils/utils.dart';
import 'package:universal_html/html.dart' as html;
import 'package:universal_html/js.dart' as js;

import 'platform_selector.dart';

PlatformSelector createSelectorObject() => WebSystem();

class WebSystem implements PlatformSelector {
  @override
  void createScriptElement() {
    // To expone the dart variable to global js code

    js.context["WEB_KEY"] = const String.fromEnvironment("WEB_KEY");
    //Custom DOM event to signal to js the execution of the dart code
    html.document.dispatchEvent(html.CustomEvent("dart_loaded"));
  }

  String getDartDefineWebKey() {
    return const String.fromEnvironment('DEFINE_WEB_KEY');
  }

  String getDartDefineClientId() {
    return const String.fromEnvironment('CLIENT_ID');
  }
}
