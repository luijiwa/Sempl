import 'package:flutter/material.dart';
import 'package:my_app/src/core/router/app_router.dart';
import 'package:my_app/src/core/theme/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// TODO: По ширине 10px   width * 0.02545
/// TODO: По высоте 10px  height * 0.0118

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
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ru'),
        Locale('en'),
      ],
      theme: createLightTheme(),
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
