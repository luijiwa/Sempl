part of 'auth_bloc.dart';

enum LoginStatus { initial, loading, unregistered, registered }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthenticationStatus.initial) AuthenticationStatus status,
    @Default('') String phone,
    @Default('') String code,
    @Default(ButtonPushStatus.initial) ButtonPushStatus statusSend1,
    @Default(ButtonPushStatus.initial) ButtonPushStatus statusSend2,
    @Default(LoginStatus.initial) LoginStatus loginStatus,
    @Default('') String errorMessage,
    @Default(false) bool isOnboardingViewed,
  }) = _AuthenticationState;

  const AuthState._();

  factory AuthState.initial() =>
      const AuthState();

  factory AuthState.authenticated() =>
      const AuthState(status: AuthenticationStatus.authenticated);
  factory AuthState.unauthenticated() =>
      const AuthState(status: AuthenticationStatus.unauthenticated);
}
