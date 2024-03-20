import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/src/feature/survey/survey_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MaterialApp(
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
      home: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => const MaterialApp(
          title: 'First Page',
          debugShowCheckedModeBanner: false,
          home: SurveyScreen(),
        ),
      ),
    );
  }
}
