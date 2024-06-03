import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/components/rest_client/rest_client.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/router/redirect_builder.dart';
import 'package:sempl/src/feature/login/bloc/auth_bloc.dart';
import 'package:sempl/src/feature/login/ui/auth_scope.dart';

/// Guard that navigates user from unauthorized routes to dashboard
/// if the user is authenticated.
final class RedirectIfAuthenticatedGuard extends Guard {
  // matches login and signup routes
  @override
  Pattern get matchPattern => RegExp(r'^/(login|signup|onboarding)$');

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final auth = AuthScope.of(context);

// final onboarding = SettingsScope.of(context).locale
    // check if the user is authenticated and registered
    if (auth.status == AuthenticationStatus.authenticated) {
      if (auth.registrationStatus == LoginStatus.unregistered) {
        return AppRoutes.loginConfirmation.path;
      } else {
        return AppRoutes.main.path;
      }
    }
    // if the user is authenticated but not registered, redirect to the login confirmation page

    return null;
  }
}

/// Guard that navigates user from authorized routes to login
/// when their authentication status is unauthenticated.
final class RedirectIfUnauthenticatedGuard extends Guard {
  // matches dashboard and settings routes
  @override
  Pattern get matchPattern => RegExp(r'^/(login|signup)$');

  @override
  bool get invertRedirect => true;

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final auth = AuthScope.of(context);

    if (auth.status == AuthenticationStatus.unauthenticated) {
      return AppRoutes.login.path;
    }

    return null;
  }
}
