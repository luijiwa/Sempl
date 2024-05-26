part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.statusChanded({
    required AuthenticationStatus status,
  }) = _StatusChanded;
  const factory AuthEvent.signOut() = _SignOut;
  const factory AuthEvent.sendPhone({required String phone}) = _SendPhone;
  const factory AuthEvent.sendCode({required String code}) = _SendCode;
  const factory AuthEvent.saveCode({required String code}) = _SaveCode;

  const factory AuthEvent.register() = _Register;
}
