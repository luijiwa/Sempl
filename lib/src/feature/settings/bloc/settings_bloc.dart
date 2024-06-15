import 'dart:ui' show Locale;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/feature/app/model/app_theme.dart';
import 'package:sempl/src/feature/settings/data/locale_repository.dart';
import 'package:sempl/src/feature/settings/data/onboarding_repository.dart';
import 'package:sempl/src/feature/settings/data/theme_repository.dart';
part 'settings_event.dart';
part 'settings_state.dart';

/// {@template settings_bloc}
/// A [Bloc] that handles the settings.
/// {@endtemplate}
final class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  /// {@macro settings_bloc}
  SettingsBloc({
    required LocaleRepository localeRepository,
    required ThemeRepository themeRepository,
    required OnboardingRepository onboardingRepo,
    required SettingsState initialState,
  })  : _localeRepo = localeRepository,
        _themeRepo = themeRepository,
        _onboardingRepo = onboardingRepo,
        super(initialState) {
    on<SettingsEvent>(
      (event, emit) => switch (event) {
        final _UpdateLocaleSettingsEvent e => _updateLocale(e, emit),
        final _UpdateThemeSettingsEvent e => _updateTheme(e, emit),
        final _CheckViewedOnboardingEvent e => _checkViewedOnboarding(e, emit),
        final _ViewedOnboardingEvent e => _viewedOnboarding(e, emit),
      },
    );
  }

  final LocaleRepository _localeRepo;
  final ThemeRepository _themeRepo;
  final OnboardingRepository _onboardingRepo;

  Future<void> _updateTheme(
    _UpdateThemeSettingsEvent event,
    Emitter<SettingsState> emitter,
  ) async {
    emitter(
      SettingsState.processing(
        appTheme: state.appTheme,
        locale: state.locale,
      ),
    );

    try {
      await _themeRepo.setTheme(event.appTheme);

      emitter(
        SettingsState.idle(appTheme: event.appTheme, locale: state.locale),
      );
    } on Object catch (e) {
      emitter(
        SettingsState.error(
          appTheme: state.appTheme,
          locale: state.locale,
          cause: e,
        ),
      );
      rethrow;
    }
  }

  Future<void> _updateLocale(
    _UpdateLocaleSettingsEvent event,
    Emitter<SettingsState> emitter,
  ) async {
    emitter(
      SettingsState.processing(
        appTheme: state.appTheme,
        locale: state.locale,
      ),
    );

    try {
      await _localeRepo.setLocale(event.locale);

      emitter(
        SettingsState.idle(appTheme: state.appTheme, locale: event.locale),
      );
    } on Object catch (e) {
      emitter(
        SettingsState.error(
          appTheme: state.appTheme,
          locale: state.locale,
          cause: e,
        ),
      );
      rethrow;
    }
  }

  Future<void> _checkViewedOnboarding(
      _CheckViewedOnboardingEvent e, Emitter<SettingsState> emit,) async {
    final onboardingViewed = await _onboardingRepo.getOnboardingViewed();

    emit(SettingsState.idle(
      appTheme: state.appTheme,
      locale: state.locale,
      onBoardingCompleted: onboardingViewed,
    ),);
  }

  _viewedOnboarding(_ViewedOnboardingEvent e, Emitter<SettingsState> emit) {
    emit(
      SettingsState.processing(
        appTheme: state.appTheme,
        locale: state.locale,
      ),
    );

    // await _localeRepo.setLocale(event.locale);
    _onboardingRepo.setOnboardingViewed();
    emit(
      SettingsState.idle(
          appTheme: state.appTheme,
          locale: state.locale,
          onBoardingCompleted: true,),
    );
  }
}
