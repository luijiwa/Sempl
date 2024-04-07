import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/src/core/router/app_routes.dart';
import 'package:my_app/src/feature/confirmation/confirmation_screen.dart';
import 'package:my_app/src/feature/delivery/delivery_screen.dart';
import 'package:my_app/src/feature/item/item_screen.dart';
import 'package:my_app/src/feature/login/login_screen.dart';
import 'package:my_app/src/feature/main/main_screen.dart';
import 'package:my_app/src/feature/onboarding/onboarding_screen.dart';
import 'package:my_app/src/feature/recent_products/categories_list_screen.dart';
import 'package:my_app/src/feature/recent_products/recent_products_screen.dart';
import 'package:my_app/src/feature/survey/survey_screen.dart';
import 'package:my_app/src/feature/survey_order/ui/survey_order_screen.dart';

class AppRouter {
  late final router = GoRouter(
    initialLocation: AppRoutes.onboarding.path,
    routes: <GoRoute>[
      GoRoute(
        name: AppRoutes.surveyOrder.name,
        path: AppRoutes.surveyOrder.path,
        builder: (context, state) {
          return const SurveyOrderScreen();
        },
      ),
      GoRoute(
        name: AppRoutes.login.name,
        path: AppRoutes.login.path,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginScreen(),
        routes: <GoRoute>[
          GoRoute(
            name: AppRoutes.loginConfirmation.name,
            path: AppRoutes.loginConfirmation.path,
            builder: (context, state) {
              return const ConfirmationScreen();
            },
          ),
        ],
      ),
      GoRoute(
        name: AppRoutes.survey.name,
        path: AppRoutes.survey.path,
        builder: (context, state) {
          return const SurveyScreen();
        },
      ),
      GoRoute(
        name: AppRoutes.onboarding.name,
        path: AppRoutes.onboarding.path,
        builder: (context, state) {
          return const OnboardinScreen();
        },
      ),
      GoRoute(
        name: AppRoutes.main.name,
        path: AppRoutes.main.path,
        builder: (BuildContext context, GoRouterState state) =>
            const MainScreen(),
        routes: <GoRoute>[
          GoRoute(
            name: AppRoutes.recentProducts.name,
            path: AppRoutes.recentProducts.path,
            builder: (BuildContext context, GoRouterState state) =>
                const RecentProductsScreen(),
            routes: <GoRoute>[
              GoRoute(
                name: AppRoutes.categories.name,
                path: AppRoutes.categories.path,
                builder: (BuildContext context, GoRouterState state) =>
                    const CategoriesListScreen(),
              )
            ],
          ),
        ],
      ),
      GoRoute(
        name: AppRoutes.itemScreen.name,
        path: AppRoutes.itemScreen.path,
        builder: (BuildContext context, GoRouterState state) {
          return const ItemScreen();
        },
        routes: <GoRoute>[
          GoRoute(
              name: AppRoutes.delivery.name,
              path: AppRoutes.delivery.path,
              builder: (BuildContext context, GoRouterState state) {
                return const DeliveryScreen();
              },
              routes: const <GoRoute>[]),
        ],
      ),
    ],
  );
}
