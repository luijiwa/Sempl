import 'package:flutter/material.dart';
import 'package:my_app/src/feature/login/ui/auth_scope.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:my_app/src/feature/app/widget/material_context.dart';
import 'package:my_app/src/feature/initialization/logic/composition_root.dart';
import 'package:my_app/src/feature/initialization/model/dependencies.dart';
import 'package:my_app/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:my_app/src/feature/settings/widget/settings_scope.dart';

/// {@template app}
/// [App] is an entry point to the application.
///
/// Scopes that don't depend on widgets returned by [MaterialApp]
/// ([Directionality], [MediaQuery], [Localizations]) should be placed here.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  const App({required this.result, super.key});

  /// The result from the [CompositionRoot].
  final CompositionResult result;

  @override
  Widget build(BuildContext context) => DefaultAssetBundle(
        bundle: SentryAssetBundle(),
        child: DependenciesScope(
          dependencies: result.dependencies,
          child: AuthScope(
            child: SettingsScope(
              settingsBloc: result.dependencies.settingsBloc,
              child: const MaterialContext(),
            ),
          ),
        ),
      );
}