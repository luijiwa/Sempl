part of 'settings_bloc.dart';

/// Events for the [SettingsBloc].
sealed class SettingsEvent {
  const SettingsEvent();

  /// Event to check if the user viewed the onboarding.
  const factory SettingsEvent.checkViewedOnboarding() =
      _CheckViewedOnboardingEvent;

  /// Event to mark the onboarding as viewed.
  const factory SettingsEvent.viewedOnboarding() = _ViewedOnboardingEvent;

  /// Event to update theme.
  const factory SettingsEvent.updateTheme({required AppTheme appTheme}) =
      _UpdateThemeSettingsEvent;

  /// Event to update the locale.
  const factory SettingsEvent.updateLocale({required Locale locale}) =
      _UpdateLocaleSettingsEvent;
}

final class _CheckViewedOnboardingEvent extends SettingsEvent {
  const _CheckViewedOnboardingEvent();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _CheckViewedOnboardingEvent;
  }

  @override
  int get hashCode => 0;

  @override
  String toString() => 'SettingsEvent.checkViewedOnboarding()';
}

final class _ViewedOnboardingEvent extends SettingsEvent {
  const _ViewedOnboardingEvent();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _ViewedOnboardingEvent;
  }

  @override
  int get hashCode => 0;

  @override
  String toString() => 'SettingsEvent.viewedOnboarding()';
}

final class _UpdateThemeSettingsEvent extends SettingsEvent {
  const _UpdateThemeSettingsEvent({required this.appTheme});

  /// The theme to update.
  final AppTheme appTheme;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _UpdateThemeSettingsEvent && other.appTheme == appTheme;
  }

  @override
  int get hashCode => appTheme.hashCode;

  @override
  String toString() => 'SettingsEvent.updateTheme(appTheme: $appTheme)';
}

final class _UpdateLocaleSettingsEvent extends SettingsEvent {
  const _UpdateLocaleSettingsEvent({required this.locale});

  /// The locale to update.
  final Locale locale;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is _UpdateLocaleSettingsEvent && other.locale == locale;
  }

  @override
  int get hashCode => locale.hashCode;

  @override
  String toString() => 'SettingsEvent.updateLocale(locale: $locale)';
}
