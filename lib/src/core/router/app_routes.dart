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
    path: 'survey_order',
  ),
  surveyOrderConfirmTypeOne(
    name: 'surveyOrderConfirmTypeOne',
    path: 'survey_order_confirm_type_one',
  ),
  surveyOrderConfirmTypeTwo(
    name: 'surveyOrderConfirmTypeTwo',
    path: 'survey_order_confirm_type_two',
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
