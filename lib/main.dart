import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/confirmation/confirmation_screen.dart';
import 'package:my_app/login/login_screen.dart';
import 'onboarding/third_page.dart';
import 'onboarding/second_page.dart';
import 'onboarding/first_page.dart';

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
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) => MaterialApp(
        title: 'First Page',
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
      ),
    );
  }
}
