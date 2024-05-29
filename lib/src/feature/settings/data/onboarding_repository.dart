import 'package:sempl/src/core/utils/preferences_dao.dart';

abstract interface class OnboardingRepository {
  /// Get locale
  Future<bool> getOnboardingViewed();

  /// Set locale
  Future<void> setOnboardingViewed();
}

/// Locale repository implementation
final class OnboardingRepositoryImpl implements OnboardingRepository {
  /// Create locale repository
  const OnboardingRepositoryImpl(
      {required OnboardingDataSource onboardingDataSource})
      : _onboardingDataSource = onboardingDataSource;

  final OnboardingDataSource _onboardingDataSource;

  @override
  Future<bool> getOnboardingViewed() =>
      _onboardingDataSource.getOnboardingViewed();

  @override
  Future<void> setOnboardingViewed() =>
      _onboardingDataSource.setOnboardingViewed();
}

abstract interface class OnboardingDataSource {
  /// Set locale
  Future<void> setOnboardingViewed();

  /// Get current locale from cache
  Future<bool> getOnboardingViewed();
}

/// {@macro locale_datasource}
final class OnboardingDataSourceLocal extends PreferencesDao
    implements OnboardingDataSource {
  const OnboardingDataSourceLocal({required super.sharedPreferences});

  PreferencesEntry<String> get _isOnboardingViewed =>
      stringEntry('settings.onboarding');

  @override
  Future<void> setOnboardingViewed() async {
    await _isOnboardingViewed.set('true');
  }

  @override
  Future<bool> getOnboardingViewed() async {
    final isOnboardingViewed = _isOnboardingViewed.read();

    if (isOnboardingViewed == null) return false;

    return isOnboardingViewed == 'true';
  }
}
