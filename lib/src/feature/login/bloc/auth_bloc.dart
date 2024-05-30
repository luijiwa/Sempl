import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/utils/logger.dart';
import 'package:sempl/src/feature/login/data/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

/// Set the state of the bloc
mixin SetStateMixin<S> on Emittable<S> {
  /// Change the state of the bloc
  void setState(S state) => emit(state);
}

class AuthBloc extends Bloc<AuthEvent, AuthState> with SetStateMixin {
  final AuthRepository<Object> _authRepository;

  AuthBloc(
    super.initialState, {
    required AuthRepository<Object> authRepository,
  }) : _authRepository = authRepository {
    on<_StatusChanded>(_onAuthenticationStatusChanged);
    on<_SendPhone>(_onSendPhone);
    on<_SendCode>(_onSendCode);
    on<_SaveCode>(_onSavCode);

    on<_SignOut>(_onLogout);
    authRepository
        .getAuthenticationStatusStream()
        .map(($status) => AuthState(status: $status))
        .listen(($state) {
      if ($state != state) {
        setState($state);
      }
    });
  }
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthenticationStatusChanged(
    _StatusChanded event,
    Emitter<AuthState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        log('case 1 unauthenticated', name: '_onAuthenticationStatusChanged');

        return emit(AuthState.unauthenticated());

      case AuthenticationStatus.authenticated:
        log('case 2 authenticated', name: '_onAuthenticationStatusChanged');
      case AuthenticationStatus.initial:
        return emit(AuthState.initial());
    }
  }

  void _onLogout(
    _SignOut event,
    Emitter<AuthState> emit,
  ) {
    _authRepository.signOut();
    emit(AuthState.unauthenticated());
  }

  Future<void> _onSendPhone(_SendPhone event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginStatus: LoginStatus.loading, errorMessage: ''));
    try {
      final phone = '8${event.phone}';
      final isRegistered =
          await _authRepository.signInFirstStepWithPhone(phone);
      if (isRegistered == 0) {
        final isRegistered = await _authRepository.registrationRequest(phone);
        emit(state.copyWith(
            loginStatus: LoginStatus.unregistered, phone: phone));
      }
      if (isRegistered == 1) {
        emit(state.copyWith(loginStatus: LoginStatus.registered, phone: phone));
      }
    } on Object catch (e, stackTrace) {
      emit(state.copyWith(
          loginStatus: LoginStatus.initial,
          errorMessage: 'Что-то пошло не так'));
      logger.e(e, error: e, stackTrace: stackTrace);
      onError(e, stackTrace);
    }
  }

  Future<void> _onSendCode(_SendCode event, Emitter<AuthState> emit) async {
    // if (!kDebugMode && state.loginStatus == LoginStatus.registered) {
    emit(state.copyWith(loginStatus: LoginStatus.loading, errorMessage: ''));
    try {
      final phone = state.phone;
      if (state.loginStatus == LoginStatus.registered) {
        await _authRepository.signInWithPhoneAndCode(phone, event.code);
      }
      if (state.loginStatus == LoginStatus.unregistered) {}
      emit(AuthState.authenticated());
    } on Object catch (e, stackTrace) {
      emit(state.copyWith(loginStatus: LoginStatus.initial));
      onError(e, stackTrace);
      emit(AuthState.unauthenticated());
    }
    // }
  }

  FutureOr<void> _onSavCode(_SaveCode event, Emitter<AuthState> emit) {
    emit(state.copyWith(code: event.code));
  }
}
