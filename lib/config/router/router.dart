import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/constants.dart' show CacheKeys;
import 'package:paypadi/config/provider_registry/provider_registry.dart'
    show localCacheProvider;

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({required this.ref});
  final Ref ref;

  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: "/",
      page: OnboardingRoute.page,
      initial: true,
      // guards: [DefaultRouteGuard(ref)],
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
      path: "/account-role",
      page: AccountRoleRoute.page,
    ),
    AutoRoute(
      path: "/setup-passenger-account",
      page: SetupPassengerAccountRoute.page,
    ),
    AutoRoute(
      path: "/setup-driver-account",
      page: SetupDriverAccountRoute.page,
    ),
    AutoRoute(
      path: "/driver-payout",
      page: DriverPayoutRoute.page,
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
      path: "/enter-password",
      page: EnterPasswordRoute.page,
    ),
    AutoRoute(
      path: "/sign-in",
      page: SignInRoute.page,
    ),
    AutoRoute(
      path: "/confirm-password",
      page: ConfirmPasswordRoute.page,
    ),
    AutoRoute(
      path: "/transaction-pin",
      page: TransactionPinRoute.page,
    ),
    AutoRoute(
      path: "/confirm-transaction-pin",
      page: ConfirmTransactionPinRoute.page,
    ),
    AutoRoute(
      path: "/biometric-authentication",
      page: BiometricAuthenticationRoute.page,
    ),
    AutoRoute(
      path: "/qr-code",
      page: QrCodeRoute.page,
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
      path: "/forgot-password",
      page: ForgotPasswordRoute.page,
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
      path: "/add-money",
      page: AddMoneyRoute.page,
    ),
    AutoRoute(
      path: "/app-navigation-bar-page",
      page: AppBottomNavBarRoute.page,
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

class DefaultRouteGuard extends AutoRouteGuard {
  const DefaultRouteGuard(this.ref);
  final Ref ref;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final bool hasCompletedOnboarding =
        ref
            .read(localCacheProvider)
            .getFromCache<bool>(CacheKeys.viewedOnboarding) ??
        false;

    if (!hasCompletedOnboarding && router.currentPath != "/") {
      resolver.redirectUntil(OnboardingRoute());
    }
    resolver.next();
  }
}
