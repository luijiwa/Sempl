import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_app/src/feature/app/app.dart';

import 'dart:async';

import 'package:my_app/src/core/utils/logger.dart';
import 'package:my_app/src/feature/app/logic/app_runner.dart';

void main() {
  logger.runLogging(
    () => runZonedGuarded(
      () => const AppRunner().initializeAndRun(),
      logger.logZoneError,
    ),
    const LogOptions(),
  );
}
