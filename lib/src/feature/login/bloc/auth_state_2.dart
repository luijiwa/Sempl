// part of 'auth_bloc.dart';

// sealed class AuthState {
//   const AuthState({
//     required this.status,
//     this.isRegistered = true,
//     this.phone = '',
//     this.code = '',
//     this.errorMessage = '',
//   });

//   /// Status of the authentication
//   final AuthenticationStatus status;
//   final bool isRegistered;
//   final String phone;
//   final String code;
//   final String errorMessage;

//   /// Idle state, state machine is doing nothing
//   const factory AuthState.idle({
//     required AuthenticationStatus status,
//   }) = _AuthStateIdle;

//   const factory AuthState.register({
//     required AuthenticationStatus status,
//     required String phone,
//     required bool isRegistered,
//   }) = _AuthStateRegister;

//   const factory AuthState.fillForm({
//     required AuthenticationStatus status,
//   }) = _AuthStateFillForm;

//   const factory AuthState.codeSubmit({
//     required AuthenticationStatus status,
//     required String phone,
//   }) = _AuthStateCodeSubmit;

//   const factory AuthState.processing({
//     required AuthenticationStatus status,
//   }) = _AuthStateProcessing;

//   const factory AuthState.error({
//     required AuthenticationStatus status,
//     required Object error,
//   }) = _AuthStateError;

//   /// Get error if state is error
//   Object? get error => switch (this) {
//         final _AuthStateError e => e.error,
//         _ => null,
//       };
// }

// final class _AuthStateIdle extends AuthState {
//   const _AuthStateIdle({required super.status});

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is _AuthStateIdle && other.status == status;
//   }

//   @override
//   int get hashCode => Object.hashAll([status]);

//   @override
//   String toString() => '_AuthStateIdle(status: $status)';
// }

// final class _AuthStateRegister extends AuthState {
//   const _AuthStateRegister({
//     required super.status,
//     required super.phone,
//     required super.isRegistered,
//   });

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is _AuthStateRegister &&
//         other.status == status &&
//         other.phone == phone &&
//         other.isRegistered == isRegistered;
//   }

//   @override
//   int get hashCode => Object.hashAll([status, phone, isRegistered]);

//   @override
//   String toString() => '_AuthStateRegister(status: $status)';
// }

// final class _AuthStateFillForm extends AuthState {
//   const _AuthStateFillForm({required super.status});

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is _AuthStateFillForm && other.status == status;
//   }

//   @override
//   int get hashCode => Object.hashAll([status]);

//   @override
//   String toString() => '_AuthStateFillForm(status: $status)';
// }

// final class _AuthStateCodeSubmit extends AuthState {
//   const _AuthStateCodeSubmit({required super.status, required super.phone});

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is _AuthStateCodeSubmit &&
//         other.status == status &&
//         other.phone == phone;
//   }

//   @override
//   int get hashCode => Object.hashAll([status, phone]);

//   @override
//   String toString() => '_AuthStateCodeSubmit(status: $status)';
// }

// final class _AuthStateProcessing extends AuthState {
//   const _AuthStateProcessing({required super.status});

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is _AuthStateProcessing && other.status == status;
//   }

//   @override
//   int get hashCode => Object.hashAll([status]);

//   @override
//   String toString() => '_AuthStateProcessing(status: $status)';
// }

// final class _AuthStateError extends AuthState {
//   const _AuthStateError({
//     required super.status,
//     required this.error,
//   });

//   @override
//   final Object error;

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is _AuthStateError &&
//         other.status == status &&
//         other.error == error;
//   }

//   @override
//   int get hashCode => Object.hashAll([status, error]);

//   @override
//   String toString() => '_AuthStateError(status: $status, error: $error)';
// }
