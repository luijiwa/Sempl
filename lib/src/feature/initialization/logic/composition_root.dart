import 'package:dio/dio.dart';
import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/components/rest_client/src/rest_client_dio.dart';
import 'package:sempl/src/feature/login/bloc/auth_bloc.dart';
import 'package:sempl/src/feature/login/data/auth_data_source.dart';
import 'package:sempl/src/feature/login/data/auth_repository.dart';
import 'package:sempl/src/feature/login/data/token_storage_sp.dart';
import 'package:sempl/src/feature/survey/data/survey_data_source.dart';
import 'package:sempl/src/feature/survey/data/survey_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sempl/src/core/constant/config.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/app/logic/tracking_manager.dart';
import 'package:sempl/src/feature/initialization/model/dependencies.dart';
import 'package:sempl/src/feature/settings/bloc/settings_bloc.dart';
import 'package:sempl/src/feature/settings/data/locale_datasource.dart';
import 'package:sempl/src/feature/settings/data/locale_repository.dart';
import 'package:sempl/src/feature/settings/data/theme_datasource.dart';
import 'package:sempl/src/feature/settings/data/theme_mode_codec.dart';
import 'package:sempl/src/feature/settings/data/theme_repository.dart';

/// {@template composition_root}
/// A place where all dependencies are initialized.
/// {@endtemplate}
///
/// {@template composition_process}
/// Composition of dependencies is a process of creating and configuring
/// instances of classes that are required for the application to work.
///
/// It is a good practice to keep all dependencies in one place to make it
/// easier to manage them and to ensure that they are initialized only once.
/// {@endtemplate}
final class CompositionRoot {
  /// {@macro composition_root}
  const CompositionRoot(this.config);

  /// Application configuration
  final Config config;

  /// Composes dependencies and returns result of composition.
  Future<CompositionResult> compose() async {
    final stopwatch = Stopwatch()..start();

    logger.info('Initializing dependencies...');
    // initialize dependencies
    final dependencies = await _initDependencies();
    logger.info('Dependencies initialized');

    stopwatch.stop();
    final result = CompositionResult(
      dependencies: dependencies,
      msSpent: stopwatch.elapsedMilliseconds,
    );
    return result;
  }

  Future<Dependencies> _initDependencies() async {
    final errorTrackingManager = await _initErrorTrackingManager();
    final sharedPreferences = await SharedPreferences.getInstance();
    final settingsBloc = await _initSettingsBloc(sharedPreferences);

    final interceptedDio = Dio();

    final storage = TokenStorageSP(sharedPreferences: sharedPreferences);
    final token = await storage.load();

    final restClient = RestClientDio(
      baseUrl: 'http://rebo766g.beget.tech',
      dio: interceptedDio,
    );
    final surveyRepository = SurveyRepositoryImpl(
      SurveyDataSourceNetwork(restClient),
    );
    final authBloc = AuthBloc(
      AuthState.idle(
        status: token != null
            ? AuthenticationStatus.authenticated
            : AuthenticationStatus.unauthenticated,
      ),
      authRepository: AuthRepositoryImpl(
        dataSource: AuthDataSourceNetwork(client: restClient),
        storage: storage,
      ),
    );

    return Dependencies(
      settingsBloc: settingsBloc,
      errorTrackingManager: errorTrackingManager,
      authBloc: authBloc,
      restClient: restClient,
      surveyRepository: surveyRepository,
    );
  }

  Future<ErrorTrackingManager> _initErrorTrackingManager() async {
    final errorTrackingManager = SentryTrackingManager(
      logger,
      sentryDsn: config.sentryDsn,
      environment: config.environment.value,
    );

    if (config.enableSentry) {
      await errorTrackingManager.enableReporting();
    }

    return errorTrackingManager;
  }

  Future<SettingsBloc> _initSettingsBloc(SharedPreferences prefs) async {
    final localeRepository = LocaleRepositoryImpl(
      localeDataSource: LocaleDataSourceLocal(sharedPreferences: prefs),
    );

    final themeRepository = ThemeRepositoryImpl(
      themeDataSource: ThemeDataSourceLocal(
        sharedPreferences: prefs,
        codec: const ThemeModeCodec(),
      ),
    );

    final localeFuture = localeRepository.getLocale();
    final theme = await themeRepository.getTheme();
    final locale = await localeFuture;

    final initialState = SettingsState.idle(appTheme: theme, locale: locale);

    final settingsBloc = SettingsBloc(
      localeRepository: localeRepository,
      themeRepository: themeRepository,
      initialState: initialState,
    );
    return settingsBloc;
  }
}
