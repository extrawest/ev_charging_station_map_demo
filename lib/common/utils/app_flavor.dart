import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

enum AppFlavor {
  dev,
  prod;

  bool get isProd => this == AppFlavor.prod;

  static Future<AppFlavor> fromPlatform() async {
    if (kIsWeb) {
      const flavor = String.fromEnvironment('FLAVOR', defaultValue: '');
      return _fromString(flavor);
    }

    const channel = MethodChannel('flavor_channel');
    final flavor = await channel.invokeMethod<String>('getFlavor');
    return _fromString(flavor);
  }

  static AppFlavor _fromString(String? flavor) {
    switch (flavor) {
      case 'dev':
        return AppFlavor.dev;
      case 'prod':
        return AppFlavor.prod;
      default:
        throw Exception('Proper flavor must be provided!');
    }
  }
}
