import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: "/", page: OnboardingRoute.page),
    AutoRoute(path: "/create-account", page: CreateAccountRoute.page),
    AutoRoute(path: "/login", page: LoginRoute.page),
  ];
}
