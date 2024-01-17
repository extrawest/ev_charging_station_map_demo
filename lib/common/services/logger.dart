import 'package:easy_localization/easy_localization.dart';
import 'package:logging/logging.dart';

import '../utils/utils.dart';

final log = Logger('EW');

class LoggerBootstrapper {
  Future<void> setupLogger() async {
    final flavor = await AppFlavor.fromPlatform();

    Logger.root.level = flavor.isProd ? Level.OFF : Level.ALL;
    Logger.root.onRecord.listen((record) {
      // It's used for printing in dev environment
      // ignore: avoid_print
      print('${record.level.name}, ${record.time}, '
          'Msg: ${record.message}, '
          '${record.error != null ? 'Error: ${record.error}, ' : ''}'
          '${record.stackTrace != null ? 'StackTrace: ${record.stackTrace}' : ''}');
    });

    if (flavor.isProd) {
      EasyLocalization.logger.enableBuildModes = [];
    }
  }
}
