import 'package:flutter/material.dart';
import 'package:my_app/src/core/router/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _router = AppRouter().router;
  static final _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();

    return MaterialApp.router(
      theme: theme,
      routerConfig: _router,
      builder: (context, child) => MediaQuery.withClampedTextScaling(
        key: _globalKey,
        minScaleFactor: 1.0,
        maxScaleFactor: 2.0,
        child: child!,
      ),
    );
  }
}
