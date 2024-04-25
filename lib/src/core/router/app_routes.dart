enum AppRoutes {
  onboarding(
    name: 'onboarding',
    path: '/onboarding',
  ),
  login(
    name: 'login',
    path: '/login',
  ),
  survey(
    name: 'survey',
    path: '/survey',
  ),
  main(
    name: 'main',
    path: '/main_screen',
  ),
  recentProducts(
    name: 'recentProducts',
    path: 'recent_products',
  ),
  categories(
    name: 'categories',
    path: 'categories',
  ),

  loginConfirmation(
    name: 'loginConfirmation',
    path: 'login_confirmation',
  ),
  itemScreen(
    name: 'itemScreen',
    path: '/item_screen',
  ),
  delivery(
    name: 'delivery',
    path: 'delivery',
  ),
  surveyOrder(
    name: 'surveyOrder',
    path: '/survey_order',
  ),

  confirmationOrderTypeOneScreen(
    name: 'confirmationOrderTypeOneScreen',
    path: 'confirmation_order_type_one_screen',
  ),
  confirmationOrderTypeTwoScreen(
    name: 'confirmationOrderTypeTwoScreen',
    path: 'confirmation_order_type_two_screen',
  ),
  profile(
    name: 'profile',
    path: 'profile',
  ),
  profileEdit(
    name: 'profileEdit',
    path: 'edit',
  ),
  reviewItemsScreen(
    name: 'reviewItemsScreen',
    path: 'review_items_screen',
  ),
  finishedSempls(
    name: 'finishedSempls',
    path: 'finished_sempls',
  ),
  feedback(
    name: 'feedback',
    path: 'feedback',
  ),
  feedbackConfirmation(
    name: 'feedbackConfirmation',
    path: 'feedbackConfirmation',
  ),
  ;

  const AppRoutes({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  @override
  String toString() => name;
}
