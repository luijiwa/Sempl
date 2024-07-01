import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/feature/app/logic/tracking_manager.dart';
import 'package:sempl/src/feature/cart/bloc/cart_bloc.dart';
import 'package:sempl/src/feature/initialization/logic/composition_root.dart';
import 'package:sempl/src/feature/item/data/repository/item_repository.dart';
import 'package:sempl/src/feature/login/bloc/auth_bloc.dart';
import 'package:sempl/src/feature/main/data/repository/main_screen_repository.dart';
import 'package:sempl/src/feature/profile/data/repository/profile_repository.dart';
import 'package:sempl/src/feature/recent_products/data/repositories/i_recent_products_repository.dart';
import 'package:sempl/src/feature/review_items/data/repositories/i_review_items_repository.dart';
import 'package:sempl/src/feature/settings/bloc/settings_bloc.dart';
import 'package:sempl/src/feature/survey/data/survey_repository.dart';

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
    required this.cartBloc,
    required this.surveyRepository,
    required this.profileRepository,
    required this.reviewItemsRepository,
    required this.itemRepository,
    required this.mainScreenRepository,
    required this.recentProductsRepository,
  });

  /// [RestClient] instance, used to make requests.
  final RestClient restClient;

  /// [AuthBloc] instance, used to manage authentication.
  final AuthBloc authBloc;

  /// [SettingsBloc] instance, used to manage theme and locale.
  final SettingsBloc settingsBloc;

  final CartBloc cartBloc;

  final SurveyRepository<dynamic> surveyRepository;
  final ProfileRepository<dynamic> profileRepository;
  final ItemRepository<dynamic> itemRepository;
  final IMainScreenRepository<dynamic> mainScreenRepository;
  final IReviewItemsRepository reviewItemsRepository;
  final IRecentProductsRepository recentProductsRepository;

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
