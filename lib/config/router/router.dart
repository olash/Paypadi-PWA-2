import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: "/",
      page: OnboardingRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: "/create-account",
      page: CreateAccountRoute.page,
    ),
    AutoRoute(
      path: "/login",
      page: LoginRoute.page,
    ),
    AutoRoute(
      path: "/setup-account",
      page: SetupAccountRoute.page,
    ),
    AutoRoute(
      path: "/account-role",
      page: AccountRoleRoute.page,
    ),
    AutoRoute(
      path: "/otp",
      page: OtpRoute.page,
    ),
    AutoRoute(
      path: "/password",
      page: PasswordRoute.page,
    ),
    AutoRoute(
      path: "/transaction-pin",
      page: TransactionPinRoute.page,
    ),
    AutoRoute(
      path: "/local-authentication",
      page: LocalAuthenticationRoute.page,
    ),

    AutoRoute(
      path: "/transfer",
      page: TransferRoute.page,
    ),
    AutoRoute(
      path: "/make-payment",
      page: MakePaymentRoute.page,
    ),
    AutoRoute(
      path: "/enter-transaction-pin",
      page: EnterPinRoute.page,
    ),
    AutoRoute(
      path: "/confirm-payment",
      page: ConfirmPaymentRoute.page,
    ),
    AutoRoute(
      path: "/receipt",
      page: ReceiptRoute.page,
    ),
    AutoRoute(
      path: "/change-theme",
      page: ChangeThemeRoute.page,
    ),
    AutoRoute(
      path: "/change-password",
      page: ChangePasswordRoute.page,
    ),
    AutoRoute(
      path: "/change-pin",
      page: ChangePinRoute.page,
    ),
    AutoRoute(
      path: "/notifications",
      page: NotificationsRoute.page,
    ),
    AutoRoute(
      path: "/profile",
      page: ProfileRoute.page,
    ),
    AutoRoute(
      path: "/referral",
      page: ReferralRoute.page,
    ),
    AutoRoute(
      path: "/support",
      page: SupportRoute.page,
    ),
    AutoRoute(
      path: "/legal",
      page: LegalRoute.page,
    ),
    AutoRoute(
      path: "/app-navigation-bar-page",
      page: AppBottomBavBarRoute.page,
      children: [
        AutoRoute(
          path: "home",
          initial: true,
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: "history",
          page: HistoryRoute.page,
        ),
        AutoRoute(
          path: "settings",
          page: SettingsRoute.page,
        ),
      ],
    ),
  ];
}
