import 'package:curl_logger_dio_interceptor/curl_logger_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:sempl/src/core/components/database/database.dart';
import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/components/rest_client/src/rest_client_dio.dart';
import 'package:sempl/src/core/constant/config.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/app/logic/tracking_manager.dart';
import 'package:sempl/src/feature/cart/bloc/cart_bloc.dart';
import 'package:sempl/src/feature/cart/data/data_source/cart_items_dao.dart';
import 'package:sempl/src/feature/cart/data/repositories/cart_repository.dart';
import 'package:sempl/src/feature/initialization/model/dependencies.dart';
import 'package:sempl/src/feature/item/data/data_source/item_data_source.dart';
import 'package:sempl/src/feature/item/data/repository/item_repository.dart';
import 'package:sempl/src/feature/login/bloc/auth_bloc.dart';
import 'package:sempl/src/feature/login/data/auth_data_source.dart';
import 'package:sempl/src/feature/login/data/auth_repository.dart';
import 'package:sempl/src/feature/login/data/token_storage_sp.dart';
import 'package:sempl/src/feature/main/data/data_source/main_screen_data_source.dart';
import 'package:sempl/src/feature/main/data/repository/main_screen_repository.dart';
import 'package:sempl/src/feature/profile/data/data_source/profile_data_source.dart';
import 'package:sempl/src/feature/profile/data/repository/profile_repository.dart';
import 'package:sempl/src/feature/settings/bloc/settings_bloc.dart';
import 'package:sempl/src/feature/settings/data/locale_datasource.dart';
import 'package:sempl/src/feature/settings/data/locale_repository.dart';
import 'package:sempl/src/feature/settings/data/onboarding_repository.dart';
import 'package:sempl/src/feature/settings/data/theme_datasource.dart';
import 'package:sempl/src/feature/settings/data/theme_mode_codec.dart';
import 'package:sempl/src/feature/settings/data/theme_repository.dart';
import 'package:sempl/src/feature/survey/data/survey_data_source.dart';
import 'package:sempl/src/feature/survey/data/survey_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

    Map<String, String> buildHeaders(Token token) => {
          'Authorization': 'Bearer ${token.accessToken}',
        };
    final interceptor = AuthInterceptor(
      storage: storage,
      buildHeaders: buildHeaders,
    );

    interceptedDio.options.headers.addAll({'Accept': 'application/json'});
    interceptedDio.interceptors.add(interceptor);
    interceptedDio.interceptors.add(CurlLoggerDioInterceptor());

    final restClient = RestClientDio(
      baseUrl: 'http://rebo766g.beget.tech',
      dio: interceptedDio,
    );
    final surveyRepository = SurveyRepositoryImpl(
      dataSource: SurveyDataSourceNetwork(restClient),
      storage: storage,
    );
    final database = AppDatabase();

    final itemRepository = ItemRepositoryImpl(
      ItemDataSourceNetwork(restClient),
    );

    final mainScreenRepository = MainScreenRepositoryImpl(
      dataSource: MainScreenDataSourceNetwork(restClient),
      storage: storage,
    );

    final profileRepository = ProfileRepositoryImpl(
      dataSource: ProfileDataSourceNetwork(restClient),
      storage: storage,
    );

    final authBloc = AuthBloc(
      AuthState(
        status: token != null
            ? AuthenticationStatus.authenticated
            : AuthenticationStatus.unauthenticated,
      ),
      authRepository: AuthRepositoryImpl(
        dataSource: AuthDataSourceNetwork(client: restClient),
        storage: storage,
      ),
    );

    final cartBloc = CartBloc(
      CartRepository(
        dataSource: CartItemsDao(database),
      ),
    )..add(const CartEvent.started());
    return Dependencies(
      cartBloc: cartBloc,
      settingsBloc: settingsBloc,
      errorTrackingManager: errorTrackingManager,
      authBloc: authBloc,
      restClient: restClient,
      surveyRepository: surveyRepository,
      profileRepository: profileRepository,
      itemRepository: itemRepository,
      mainScreenRepository: mainScreenRepository,
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
    final onboardingRepository = OnboardingRepositoryImpl(
      onboardingDataSource: OnboardingDataSourceLocal(
        sharedPreferences: prefs,
      ),
    );
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
      onboardingRepo: onboardingRepository,
    );
    return settingsBloc;
  }
}
