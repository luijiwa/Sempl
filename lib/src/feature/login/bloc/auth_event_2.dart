// part of 'auth_bloc.dart';

// sealed class AuthEvent {
//   const AuthEvent();

//   /// Event to sign in first step with phone
//   const factory AuthEvent.signInFirstStepWithPhone({
//     required String phone,
//   }) = _SignInFirstStepWithPhone;

//   /// Event to sign in with phone and code
//   const factory AuthEvent.signInWithPhoneAndCode({
//     required String phone,
//     required String code,
//   }) = _SignInWithPhoneAndCode;

//   /// Event to submit code for registration
//   const factory AuthEvent.submitCodeForRegistration({
//     required String phone,
//     required String code,
//   }) = _SubmitCodeForRegistration;

//   /// Event to submit registration form
//   const factory AuthEvent.submitRegistrationForm({
//     required Map<String, String> form,
//   }) = _SubmitRegistrationForm;

//   /// Event to sign out
//   const factory AuthEvent.signOut() = _SignOut;
// }

// final class _SignInFirstStepWithPhone extends AuthEvent {
//   final String phone;

//   const _SignInFirstStepWithPhone({
//     required this.phone,
//   });
// }

// final class _SignInWithPhoneAndCode extends AuthEvent {
//   final String phone;
//   final String code;

//   const _SignInWithPhoneAndCode({
//     required this.phone,
//     required this.code,
//   });
// }

// final class _SubmitCodeForRegistration extends AuthEvent {
//   final String phone;
//   final String code;

//   const _SubmitCodeForRegistration({
//     required this.phone,
//     required this.code,
//   });
// }

// final class _SubmitRegistrationForm extends AuthEvent {
//   final Map<String, String> form;

//   const _SubmitRegistrationForm({
//     required this.form,
//   });
// }

// final class _SignOut extends AuthEvent {
//   const _SignOut();
// }
