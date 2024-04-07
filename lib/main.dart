import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_app/src/feature/app/app.dart';

void main() {
  runApp(const App());

  FlutterError.onError = (details) {
    log(details.exceptionAsString());
  };
}
