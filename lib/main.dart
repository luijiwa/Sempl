import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_app/src/core/router/app_router.dart';
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
    final theme = Theme.of(context);
    return MaterialApp.router(
      theme: theme.copyWith(
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(width: 0.5, color: AppThemeColor.gris),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(width: 0.5, color: AppThemeColor.blueColor),
          ),
          hintStyle: TextStyle(
            fontFamily: 'SourceSansPro',
            fontSize: 14,
            color: AppThemeColor.gris,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(
              width: 0.5,
              color: AppThemeColor.gris,
            ),
          ),
        ),
      ),
      routerConfig: _router,
    );
  }
}
