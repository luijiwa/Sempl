import 'package:my_app/src/core/components/rest_client/rest_client.dart';
import 'package:my_app/src/feature/app/logic/tracking_manager.dart';
import 'package:my_app/src/feature/initialization/logic/composition_root.dart';
import 'package:my_app/src/feature/login/bloc/auth_bloc.dart';
import 'package:my_app/src/feature/settings/bloc/settings_bloc.dart';

/// {@template dependencies}
/// Composed dependencies from the [CompositionRoot].
///
/// This class is used to pass dependencies to the application.
///
/// {@macro composition_process}
/// {@endtemplate}
base class Dependencies {
  /// {@macro dependencies}
  const Dependencies({
    required this.settingsBloc,
    required this.errorTrackingManager,
    required this.restClient,
    required this.authBloc,
  });

  /// [RestClient] instance, used to make requests.
  final RestClient restClient;

  /// [AuthBloc] instance, used to manage authentication.
  final AuthBloc authBloc;

  /// [SettingsBloc] instance, used to manage theme and locale.
  final SettingsBloc settingsBloc;

  /// [ErrorTrackingManager] instance, used to report errors.
  final ErrorTrackingManager errorTrackingManager;
}

/// {@template composition_result}
/// Result of composition
///
/// {@macro composition_process}
/// {@endtemplate}
final class CompositionResult {
  /// {@macro composition_result}
  const CompositionResult({
    required this.dependencies,
    required this.msSpent,
  });

  /// The dependencies
  final Dependencies dependencies;

  /// The number of milliseconds spent
  final int msSpent;

  @override
  String toString() => '$CompositionResult('
      'dependencies: $dependencies, '
      'msSpent: $msSpent'
      ')';
}
