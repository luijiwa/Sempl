import 'package:my_app/src/core/components/rest_client/rest_client.dart';
import 'package:my_app/src/core/utils/extentions/context_extension.dart';
import 'package:my_app/src/feature/login/bloc/auth_bloc.dart';
import 'package:my_app/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Auth controller
abstract interface class AuthController {
  /// Authentication status
  AuthenticationStatus get status;

  /// Sign in with phone and code
  void signInFirstStepWithPhone(String phone);

  /// Sign in with phone and code
  void signInWithPhoneAndCode(String phone, String code);

  /// Sign out
  void signOut();
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
  void signInWithPhoneAndCode(
    String phone,
    String code,
  ) =>
      _authBloc.add(
        AuthEvent.signInWithPhoneAndCode(
          phone: phone,
          code: code,
        ),
      );

  @override
  void signOut() => _authBloc.add(const AuthEvent.signOut());

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

  @override
  void signInFirstStepWithPhone(String phone) => _authBloc.add(
        AuthEvent.signInFirstStepWithPhone(phone: phone),
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
