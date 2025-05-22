import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(path: "/", page: OnboardingRoute.page, initial: true),
    AutoRoute(path: "/create-account", page: CreateAccountRoute.page),
    AutoRoute(path: "/login", page: LoginRoute.page),
    AutoRoute(path: "/setup-account", page: SetupAccountRoute.page),
    AutoRoute(path: "/account-role", page: AccountRoleRoute.page),
    AutoRoute(path: "/otp", page: OtpRoute.page),
  ];
}
