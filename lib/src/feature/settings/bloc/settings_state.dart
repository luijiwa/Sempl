part of 'settings_bloc.dart';

/// States for the [SettingsBloc].
sealed class SettingsState {
  const SettingsState(
      {this.locale, this.appTheme, this.onBoardingCompleted = false,});

  /// Application locale.
  final Locale? locale;

  /// Data class used to represent the state of theme.
  final AppTheme? appTheme;

  /// Has the user completed onboarding.
  final bool onBoardingCompleted;

  /// Idle state for the [SettingsBloc].
  const factory SettingsState.idle({
    Locale? locale,
    AppTheme? appTheme,
    bool onBoardingCompleted,
  }) = _IdleSettingsState;

  /// Processing state for the [SettingsBloc].
  const factory SettingsState.processing({
    Locale? locale,
    AppTheme? appTheme,
    bool onBoardingCompleted,
  }) = _ProcessingSettingsState;

  /// Error state for the [SettingsBloc].
  const factory SettingsState.error({
    required Object cause,
    Locale? locale,
    AppTheme? appTheme,
    bool onBoardingCompleted,
  }) = _ErrorSettingsState;
}

final class _IdleSettingsState extends SettingsState {
  const _IdleSettingsState({
    super.locale,
    super.appTheme,
    super.onBoardingCompleted,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _IdleSettingsState &&
        other.locale == locale &&
        other.appTheme == appTheme &&
        other.onBoardingCompleted == onBoardingCompleted;
  }

  @override
  int get hashCode => Object.hash(locale, appTheme, onBoardingCompleted);

  @override
  String toString() =>
      'SettingsState.idle(locale: $locale, appTheme: $appTheme, onBoardingCompleted: $onBoardingCompleted)';
}

final class _ProcessingSettingsState extends SettingsState {
  const _ProcessingSettingsState({
    super.locale,
    super.appTheme,
    super.onBoardingCompleted,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _ProcessingSettingsState &&
        other.locale == locale &&
        other.appTheme == appTheme &&
        other.onBoardingCompleted == onBoardingCompleted;
  }

  @override
  int get hashCode => Object.hash(locale, appTheme, onBoardingCompleted);

  @override
  String toString() =>
      'SettingsState.processing(locale: $locale, appTheme: $appTheme, onBoardingCompleted: $onBoardingCompleted)';
}

final class _ErrorSettingsState extends SettingsState {
  const _ErrorSettingsState({
    required this.cause,
    super.locale,
    super.appTheme,
    super.onBoardingCompleted,
  });

  /// The cause of the error.
  final Object cause;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _ErrorSettingsState &&
        other.cause == cause &&
        other.locale == locale &&
        other.appTheme == appTheme &&
        other.onBoardingCompleted == onBoardingCompleted;
  }

  @override
  int get hashCode => Object.hash(cause, locale, appTheme, onBoardingCompleted);

  @override
  String toString() => 'SettingsState.error(cause: $cause, '
      'locale: $locale, appTheme: $appTheme, onBoardingCompleted: $onBoardingCompleted)';
}
