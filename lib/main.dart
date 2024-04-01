import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_app/src/core/router/app_router.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:my_app/theme.dart';

void main() {
  runApp(const MyApp());

  FlutterError.onError = (details) {
    log(details.exceptionAsString());
  };
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _router = AppRouter().router;

  @override
  Widget build(BuildContext context) {
    final theme = getAppThemeData(); // Получаем нашу тему из отдельного файла

    return MaterialApp.router(
      theme: theme,
      routerConfig: _router,
    );
  }
}
