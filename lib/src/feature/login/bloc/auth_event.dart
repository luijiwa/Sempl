/// Events for [AuthBloc]
part of 'auth_bloc.dart';

sealed class AuthEvent {
  const AuthEvent();

  /// Event to sign in with Email and Password
  const factory AuthEvent.signInFirstStepWithPhone({
    required String phone,
  }) = _SignInFirstStepWithPhone;

  /// Event to sign in with Email and Password
  const factory AuthEvent.signInWithPhoneAndCode({
    required String phone,
    required String code,
  }) = _SignInWithPhoneAndCode;

  /// Event to sign out
  const factory AuthEvent.signOut() = _SignOut;
}

final class _SignInFirstStepWithPhone extends AuthEvent {
  final String phone;

  const _SignInFirstStepWithPhone({
    required this.phone,
  });
}

final class _SignInWithPhoneAndCode extends AuthEvent {
  final String phone;
  final String code;

  const _SignInWithPhoneAndCode({
    required this.phone,
    required this.code,
  });
}

final class _SignOut extends AuthEvent {
  const _SignOut();
}
