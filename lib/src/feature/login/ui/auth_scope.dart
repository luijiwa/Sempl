import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/utils/extentions/context_extension.dart';
import 'package:sempl/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:sempl/src/feature/login/bloc/auth_bloc.dart';

/// Auth controller
abstract interface class AuthController {
  /// Authentication status
  AuthenticationStatus get status;

  LoginStatus get registrationStatus;

  /// Sign in with phone and code
  void signInFirstStepWithPhone(String phone);

  /// Sign in with phone and code
  void signInWithPhoneAndCode(String code);

  void retrySendCode();

  void saveCode(String code);

  /// Sign out
  void signOut();

  /// Submit registration form
  void submitRegistrationForm(Map<String, String> form);
}

/// Scope that controls the authentication state
class AuthScope extends StatefulWidget {
  /// Create an [AuthScope]
  const AuthScope({required this.child, super.key});

  /// The child widget
  final Widget child;

  /// Get the [AuthController] from the [BuildContext]
  static AuthController of(BuildContext context, {bool listen = true}) =>
      context.inhOf<_AuthInherited>(listen: listen).controller;

  @override
  State<AuthScope> createState() => _AuthScopeState();
}

class _AuthScopeState extends State<AuthScope> implements AuthController {
  late final AuthBloc _authBloc;
  late AuthState _state;

  @override
  void initState() {
    super.initState();
    _authBloc = DependenciesScope.of(context).authBloc;
    _state = _authBloc.state;
  }

  @override
  AuthenticationStatus get status => _state.status;

  @override
  LoginStatus get registrationStatus => _state.loginStatus;

  @override
  void signInWithPhoneAndCode(String code) =>
      _authBloc.add(AuthEvent.sendCode(code: code));

  @override
  void saveCode(String code) => _authBloc.add(AuthEvent.saveCode(code: code));

  @override
  void signOut() => _authBloc.add(const AuthEvent.signOut());

  @override
  void signInFirstStepWithPhone(String phone) =>
      _authBloc.add(AuthEvent.sendPhone(phone: phone));

  @override
  void submitRegistrationForm(Map<String, String> form) =>
      _authBloc.add(const AuthEvent.register()); //TODO

  @override
  void retrySendCode() => _authBloc.add(const AuthEvent.retrySendCode());
  @override
  Widget build(BuildContext context) => BlocBuilder<AuthBloc, AuthState>(
        bloc: _authBloc,
        builder: (context, state) {
          _state = state;

          return _AuthInherited(
            controller: this,
            state: _authBloc.state,
            child: widget.child,
          );
        },
      );
}

final class _AuthInherited extends InheritedWidget {
  final AuthController controller;
  final AuthState state;

  const _AuthInherited({
    required super.child,
    required this.controller,
    required this.state,
  });

  @override
  bool updateShouldNotify(covariant _AuthInherited oldWidget) =>
      state != oldWidget.state;
}
