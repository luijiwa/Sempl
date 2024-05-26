// import 'package:sempl/src/core/components/rest_client/rest_client.dart';
// import 'package:sempl/src/feature/login/data/auth_data_source.dart';
// import 'package:sempl/src/feature/login/data/auth_repository.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// part 'auth_event.dart';
// part 'auth_state.dart';

// /// Set the state of the bloc
// mixin SetStateMixin<S> on Emittable<S> {
//   /// Change the state of the bloc
//   void setState(S state) => emit(state);
// }

// /// AuthBloc
// final class AuthBloc extends Bloc<AuthEvent, AuthState> with SetStateMixin {
//   final AuthRepository<Object> _authRepository;

//   /// Create an [AuthBloc]
//   ///
//   /// This specializes required initialState as it should be preloaded.
//   AuthBloc(
//     super.initialState, {
//     required AuthRepository<Object> authRepository,
//   }) : _authRepository = authRepository {
//     on<AuthEvent>(
//       (event, emit) => switch (event) {
//         final _SignInFirstStepWithPhone e => _signInFirstStepWithPhone(e, emit),
//         final _SignInWithPhoneAndCode e => _signInWithPhoneAndCode(e, emit),
//         final _SignOut e => _signOut(e, emit),
//         final _SubmitCodeForRegistration e =>
//           _submitCodeForRegistration(e, emit),
//         final _SubmitRegistrationForm e => _submitRegistrationForm(e, emit),
//       },
//     );

//     // emit new state when the authentication status changes
//     authRepository
//         .getAuthenticationStatusStream()
//         .map(($status) => AuthState.idle(status: $status))
//         .listen(($state) {
//       if ($state != state) {
//         setState($state);
//       }
//     });
//   }
//   Future<void> _signInFirstStepWithPhone(
//     _SignInFirstStepWithPhone event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(AuthState.processing(status: state.status));
//     final phone = event.phone;

//     try {
//       await _authRepository.signInFirstStepWithPhone(phone);

//       emit(AuthState.codeSubmit(
//         status: AuthenticationStatus.initial,
//         phone: phone,
//       ));
//     } on Object catch (e, stackTrace) {
//       if (e is WrongCredentialsException) {
//         emit(AuthState.register(
//             status: AuthenticationStatus.initial,
//             phone: phone,
//             isRegistered: false));
//       } else {
//         emit(
//           AuthState.error(
//             status: AuthenticationStatus.unauthenticated,
//             error: e,
//           ),
//         );
//       }
//       onError(e, stackTrace);
//     }
//   }

//   Future<void> _signInWithPhoneAndCode(
//     _SignInWithPhoneAndCode event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(AuthState.processing(status: state.status));

//     try {
//       await _authRepository.signInWithPhoneAndCode(
//         event.phone,
//         event.code,
//       );
//       emit(const AuthState.idle(status: AuthenticationStatus.authenticated));
//     } on Object catch (e, stackTrace) {
//       emit(
//         AuthState.error(
//           status: AuthenticationStatus.unauthenticated,
//           error: e,
//         ),
//       );
//       onError(e, stackTrace);
//     }
//   }

//   Future<void> _signOut(
//     _SignOut event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(AuthState.processing(status: state.status));

//     try {
//       await _authRepository.signOut();
//       emit(const AuthState.idle(status: AuthenticationStatus.unauthenticated));
//     } on Object catch (e, stackTrace) {
//       emit(
//         AuthState.error(
//           status: AuthenticationStatus.unauthenticated,
//           error: e,
//         ),
//       );
//       onError(e, stackTrace);
//     }
//   }

//   Future<void> _submitCodeForRegistration(
//     _SubmitCodeForRegistration event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(AuthState.processing(status: state.status));

//     try {
//       await _authRepository.submitCodeForRegistration(event.phone, event.code);

//       emit(const AuthState.fillForm(status: AuthenticationStatus.initial));
//     } on Object catch (e, stackTrace) {
//       emit(
//         AuthState.error(
//           status: AuthenticationStatus.unauthenticated,
//           error: e,
//         ),
//       );
//       onError(e, stackTrace);
//     }
//   }

//   Future<void> _submitRegistrationForm(
//     _SubmitRegistrationForm event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(AuthState.processing(status: state.status));

//     try {
//       await _authRepository.submitRegistrationForm(event.form);

//       emit(const AuthState.idle(status: AuthenticationStatus.authenticated));
//     } on Object catch (e, stackTrace) {
//       emit(
//         AuthState.error(
//           status: AuthenticationStatus.unauthenticated,
//           error: e,
//         ),
//       );
//       onError(e, stackTrace);
//     }
//   }
// }
