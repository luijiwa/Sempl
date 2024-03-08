import 'package:flutter/material.dart';

import 'onboarding/third_page.dart';
import 'onboarding/second_page.dart';
import 'onboarding/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Page',
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
    );
  }
}
