import 'dart:async';

import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/app/logic/app_runner.dart';

void main() {
  logger.runLogging(
    () => runZonedGuarded(
      () => const AppRunner().initializeAndRun(),
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}
