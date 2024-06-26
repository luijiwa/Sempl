import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sempl/src/core/router/app_routes.dart';
import 'package:sempl/src/core/router/auth_guard.dart';
import 'package:sempl/src/core/router/redirect_builder.dart';
import 'package:sempl/src/feature/cart/ui/cart_screen.dart';
import 'package:sempl/src/feature/confirmation/confirmation_screen.dart';
import 'package:sempl/src/feature/delivery/delivery_screen.dart';
import 'package:sempl/src/feature/feedback/ui/feedback_screen.dart';
import 'package:sempl/src/feature/feedback/ui/widgets/%D1%81onfirmation_feedback_screen.dart';
import 'package:sempl/src/feature/finished_sempls/ui/finishes_sempls_screen.dart';
import 'package:sempl/src/feature/item/ui/item_screen.dart';
import 'package:sempl/src/feature/login/ui/login_screen.dart';
import 'package:sempl/src/feature/main/ui/main_screen.dart';
import 'package:sempl/src/feature/onboarding/onboarding_screen.dart';
import 'package:sempl/src/feature/profile/ui/profile_screen.dart';
import 'package:sempl/src/feature/profile/ui/widgets/delete_account_confirmation_screen.dart';
import 'package:sempl/src/feature/recent_products/ui/recent_products_screen.dart';
import 'package:sempl/src/feature/review_items/ui/review_items_screen.dart';
import 'package:sempl/src/feature/survey/ui/survey_screen.dart';
import 'package:sempl/src/feature/survey_order/ui/%D1%81onfirmation_order_type_one_screen.dart';
import 'package:sempl/src/feature/survey_order/ui/%D1%81onfirmation_order_type_two_screen.dart';
import 'package:sempl/src/feature/survey_order/ui/survey_order_screen.dart';

class AppRouter {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  late final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: AppRoutes.onboarding.path,
    routes: <GoRoute>[
      GoRoute(
        name: AppRoutes.cart.name,
        path: AppRoutes.cart.path,
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        name: AppRoutes.surveyOrder.name,
        path: AppRoutes.surveyOrder.path,
        builder: (context, state) => const SurveyOrderScreen(),
        routes: <GoRoute>[
          GoRoute(
            name: AppRoutes.confirmationOrderTypeOneScreen.name,
            path: AppRoutes.confirmationOrderTypeOneScreen.path,
            builder: (context, state) => const ConfirmationOrderTypeOneScreen(),
          ),
          GoRoute(
            name: AppRoutes.confirmationOrderTypeTwoScreen.name,
            path: AppRoutes.confirmationOrderTypeTwoScreen.path,
            builder: (context, state) => const ConfirmationOrderTypeTwoScreen(),
          ),
        ],
      ),
      GoRoute(
        name: AppRoutes.login.name,
        path: AppRoutes.login.path,
        builder: (BuildContext context, GoRouterState state) =>
            const LoginScreen(),
        routes: const <GoRoute>[],
      ),
      GoRoute(
        name: AppRoutes.survey.name,
        path: AppRoutes.survey.path,
        builder: (context, state) => const SurveyScreen(),
      ),
      GoRoute(
        name: AppRoutes.onboarding.name,
        path: AppRoutes.onboarding.path,
        builder: (context, state) => const OnboardinScreen(),
      ),
      GoRoute(
        name: AppRoutes.main.name,
        path: AppRoutes.main.path,
        builder: (BuildContext context, GoRouterState state) =>
            const MainScreen(),
        routes: <GoRoute>[
          GoRoute(
            name: AppRoutes.profile.name,
            path: AppRoutes.profile.path,
            builder: (context, state) => const ProfileScreen(),
            routes: <GoRoute>[
              GoRoute(
                name: AppRoutes.reviewItemsScreen.name,
                path: AppRoutes.reviewItemsScreen.path,
                builder: (context, state) => const ReviewItemsScreen(),
                routes: [
                  GoRoute(
                    name: AppRoutes.feedback.name,
                    path: AppRoutes.feedback.path,
                    builder: (context, state) => const FeedbackScreen(),
                    routes: [
                      GoRoute(
                        name: AppRoutes.feedbackConfirmation.name,
                        path: AppRoutes.feedbackConfirmation.path,
                        builder: (context, state) =>
                            const ConfirmationFeedbackScreen(),
                      ),
                    ],
                  ),
                ],
              ),
              // GoRoute(
              //     name: AppRoutes.profileEdit.name,
              //     path: AppRoutes.profileEdit.path,
              //     builder: (context, state) {
              //       return const ProfileEditScreen();
              //     }),
              GoRoute(
                name: AppRoutes.finishedSempls.name,
                path: AppRoutes.finishedSempls.path,
                builder: (context, state) => const FinishedSemplsScreen(),
              ),
              GoRoute(
                name: AppRoutes.profileDeleteConfirmation.name,
                path: AppRoutes.profileDeleteConfirmation.path,
                builder: (BuildContext context, GoRouterState state) =>
                    const DeleteAccountConfirmationScreen(),
              ),
            ],
          ),
          GoRoute(
            name: AppRoutes.recentProducts.name,
            path: AppRoutes.recentProducts.path,
            builder: (BuildContext context, GoRouterState state) =>
                const RecentProductsScreen(),
            routes: <GoRoute>[
              // GoRoute(
              //   name: AppRoutes.categories.name,
              //   path: AppRoutes.categories.path,
              //   builder: (BuildContext context, GoRouterState state) =>
              //       const CategoriesListScreen(),
              // )
            ],
          ),
        ],
      ),
      GoRoute(
        name: AppRoutes.itemScreen.name,
        path: AppRoutes.itemScreen.path,
        builder: (BuildContext context, GoRouterState state) {
          final id = state.pathParameters['id']!;

          return ItemScreen(
            id: id,
          );
        },
        // routes: <GoRoute>[],
      ),
      GoRoute(
        name: AppRoutes.loginConfirmation.name,
        path: AppRoutes.loginConfirmation.path,
        builder: (context, state) => const ConfirmationAuthScreen(),
      ),
      GoRoute(
        name: AppRoutes.delivery.name,
        path: AppRoutes.delivery.path,
        builder: (BuildContext context, GoRouterState state) {
          // final id = state.pathParameters['itemId']!;
          return const DeliveryScreen();
        },
        routes: const <GoRoute>[
          // GoRoute(
          //   name: AppRoutes.surveyOrder.name,
          //   path: AppRoutes.surveyOrder.path,
          //   builder: (context, state) {
          //     return const SurveyOrderScreen();
          //   },
          //   routes: <GoRoute>[
          //     GoRoute(
          //         name: AppRoutes.confirmationOrderTypeOneScreen.name,
          //         path: AppRoutes.confirmationOrderTypeOneScreen.path,
          //         builder: (context, state) {
          //           return const ConfirmationOrderTypeOneScreen();
          //         }),
          //     GoRoute(
          //         name: AppRoutes.confirmationOrderTypeTwoScreen.name,
          //         path: AppRoutes.confirmationOrderTypeTwoScreen.path,
          //         builder: (context, state) {
          //           return const ConfirmationOrderTypeTwoScreen();
          //         }),
          //   ],
          // ),
        ],
      ),
    ],
    redirect: RedirectBuilder({
      RedirectIfAuthenticatedGuard(),
      RedirectIfUnauthenticatedGuard(),
    }).call,
  );
}
