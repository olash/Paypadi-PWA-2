// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i27;
import 'package:flutter/material.dart' as _i28;
import 'package:paypadi/src/features/authentication/presentation/views/account_role.dart'
    as _i1;
import 'package:paypadi/src/features/authentication/presentation/views/create_account.dart'
    as _i7;
import 'package:paypadi/src/features/authentication/presentation/views/local_authentication.dart'
    as _i12;
import 'package:paypadi/src/features/authentication/presentation/views/login.dart'
    as _i13;
import 'package:paypadi/src/features/authentication/presentation/views/onboarding.dart'
    as _i16;
import 'package:paypadi/src/features/authentication/presentation/views/otp.dart'
    as _i17;
import 'package:paypadi/src/features/authentication/presentation/views/password.dart'
    as _i18;
import 'package:paypadi/src/features/authentication/presentation/views/setup_account.dart'
    as _i23;
import 'package:paypadi/src/features/authentication/presentation/views/transaction_pin.dart'
    as _i25;
import 'package:paypadi/src/features/home/presentation/views/history.dart'
    as _i9;
import 'package:paypadi/src/features/home/presentation/views/home.dart' as _i10;
import 'package:paypadi/src/features/settings/presentation/views/change_password.dart'
    as _i3;
import 'package:paypadi/src/features/settings/presentation/views/change_pin.dart'
    as _i4;
import 'package:paypadi/src/features/settings/presentation/views/change_theme.dart'
    as _i5;
import 'package:paypadi/src/features/settings/presentation/views/legal.dart'
    as _i11;
import 'package:paypadi/src/features/settings/presentation/views/notifications.dart'
    as _i15;
import 'package:paypadi/src/features/settings/presentation/views/profile.dart'
    as _i19;
import 'package:paypadi/src/features/settings/presentation/views/referral.dart'
    as _i21;
import 'package:paypadi/src/features/settings/presentation/views/settings.dart'
    as _i22;
import 'package:paypadi/src/features/settings/presentation/views/support.dart'
    as _i24;
import 'package:paypadi/src/features/transfer/presentation/views/confirm_payment.dart'
    as _i6;
import 'package:paypadi/src/features/transfer/presentation/views/enter_pin.dart'
    as _i8;
import 'package:paypadi/src/features/transfer/presentation/views/make_payment.dart'
    as _i14;
import 'package:paypadi/src/features/transfer/presentation/views/receipt.dart'
    as _i20;
import 'package:paypadi/src/features/transfer/presentation/views/transfer.dart'
    as _i26;
import 'package:paypadi/src/shared/widgets/app_bottom_nav_bar.dart' as _i2;

/// generated route for
/// [_i1.AccountRoleScreen]
class AccountRoleRoute extends _i27.PageRouteInfo<void> {
  const AccountRoleRoute({List<_i27.PageRouteInfo>? children})
    : super(AccountRoleRoute.name, initialChildren: children);

  static const String name = 'AccountRoleRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountRoleScreen();
    },
  );
}

/// generated route for
/// [_i2.AppBottomBavBarScreen]
class AppBottomBavBarRoute extends _i27.PageRouteInfo<void> {
  const AppBottomBavBarRoute({List<_i27.PageRouteInfo>? children})
    : super(AppBottomBavBarRoute.name, initialChildren: children);

  static const String name = 'AppBottomBavBarRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i2.AppBottomBavBarScreen();
    },
  );
}

/// generated route for
/// [_i3.ChangePasswordScreen]
class ChangePasswordRoute extends _i27.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        ChangePasswordRoute.name,
        args: ChangePasswordRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ChangePasswordRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChangePasswordRouteArgs>(
        orElse: () => const ChangePasswordRouteArgs(),
      );
      return _i3.ChangePasswordScreen(key: args.key);
    },
  );
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.ChangePinScreen]
class ChangePinRoute extends _i27.PageRouteInfo<ChangePinRouteArgs> {
  ChangePinRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        ChangePinRoute.name,
        args: ChangePinRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ChangePinRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChangePinRouteArgs>(
        orElse: () => const ChangePinRouteArgs(),
      );
      return _i4.ChangePinScreen(key: args.key);
    },
  );
}

class ChangePinRouteArgs {
  const ChangePinRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'ChangePinRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.ChangeThemeScreen]
class ChangeThemeRoute extends _i27.PageRouteInfo<ChangeThemeRouteArgs> {
  ChangeThemeRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        ChangeThemeRoute.name,
        args: ChangeThemeRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ChangeThemeRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChangeThemeRouteArgs>(
        orElse: () => const ChangeThemeRouteArgs(),
      );
      return _i5.ChangeThemeScreen(key: args.key);
    },
  );
}

class ChangeThemeRouteArgs {
  const ChangeThemeRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'ChangeThemeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.ConfirmPaymentScreen]
class ConfirmPaymentRoute extends _i27.PageRouteInfo<ConfirmPaymentRouteArgs> {
  ConfirmPaymentRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        ConfirmPaymentRoute.name,
        args: ConfirmPaymentRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ConfirmPaymentRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmPaymentRouteArgs>(
        orElse: () => const ConfirmPaymentRouteArgs(),
      );
      return _i6.ConfirmPaymentScreen(key: args.key);
    },
  );
}

class ConfirmPaymentRouteArgs {
  const ConfirmPaymentRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'ConfirmPaymentRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.CreateAccountScreen]
class CreateAccountRoute extends _i27.PageRouteInfo<CreateAccountRouteArgs> {
  CreateAccountRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        CreateAccountRoute.name,
        args: CreateAccountRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'CreateAccountRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateAccountRouteArgs>(
        orElse: () => const CreateAccountRouteArgs(),
      );
      return _i7.CreateAccountScreen(key: args.key);
    },
  );
}

class CreateAccountRouteArgs {
  const CreateAccountRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'CreateAccountRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.EnterPinScreen]
class EnterPinRoute extends _i27.PageRouteInfo<EnterPinRouteArgs> {
  EnterPinRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        EnterPinRoute.name,
        args: EnterPinRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'EnterPinRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EnterPinRouteArgs>(
        orElse: () => const EnterPinRouteArgs(),
      );
      return _i8.EnterPinScreen(key: args.key);
    },
  );
}

class EnterPinRouteArgs {
  const EnterPinRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'EnterPinRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.HistoryScreen]
class HistoryRoute extends _i27.PageRouteInfo<void> {
  const HistoryRoute({List<_i27.PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i9.HistoryScreen();
    },
  );
}

/// generated route for
/// [_i10.HomeScreen]
class HomeRoute extends _i27.PageRouteInfo<void> {
  const HomeRoute({List<_i27.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i10.HomeScreen();
    },
  );
}

/// generated route for
/// [_i11.LegalScreen]
class LegalRoute extends _i27.PageRouteInfo<LegalRouteArgs> {
  LegalRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        LegalRoute.name,
        args: LegalRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LegalRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LegalRouteArgs>(
        orElse: () => const LegalRouteArgs(),
      );
      return _i11.LegalScreen(key: args.key);
    },
  );
}

class LegalRouteArgs {
  const LegalRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'LegalRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.LocalAuthenticationScreen]
class LocalAuthenticationRoute extends _i27.PageRouteInfo<void> {
  const LocalAuthenticationRoute({List<_i27.PageRouteInfo>? children})
    : super(LocalAuthenticationRoute.name, initialChildren: children);

  static const String name = 'LocalAuthenticationRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i12.LocalAuthenticationScreen();
    },
  );
}

/// generated route for
/// [_i13.LoginScreen]
class LoginRoute extends _i27.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        LoginRoute.name,
        args: LoginRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LoginRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>(
        orElse: () => const LoginRouteArgs(),
      );
      return _i13.LoginScreen(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i14.MakePaymentScreen]
class MakePaymentRoute extends _i27.PageRouteInfo<MakePaymentRouteArgs> {
  MakePaymentRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        MakePaymentRoute.name,
        args: MakePaymentRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'MakePaymentRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MakePaymentRouteArgs>(
        orElse: () => const MakePaymentRouteArgs(),
      );
      return _i14.MakePaymentScreen(key: args.key);
    },
  );
}

class MakePaymentRouteArgs {
  const MakePaymentRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'MakePaymentRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.NotificationsScreen]
class NotificationsRoute extends _i27.PageRouteInfo<NotificationsRouteArgs> {
  NotificationsRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        NotificationsRoute.name,
        args: NotificationsRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'NotificationsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationsRouteArgs>(
        orElse: () => const NotificationsRouteArgs(),
      );
      return _i15.NotificationsScreen(key: args.key);
    },
  );
}

class NotificationsRouteArgs {
  const NotificationsRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'NotificationsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.OnboardingScreen]
class OnboardingRoute extends _i27.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        OnboardingRoute.name,
        args: OnboardingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnboardingRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingRouteArgs>(
        orElse: () => const OnboardingRouteArgs(),
      );
      return _i16.OnboardingScreen(key: args.key);
    },
  );
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.OtpScreen]
class OtpRoute extends _i27.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        OtpRoute.name,
        args: OtpRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OtpRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>(
        orElse: () => const OtpRouteArgs(),
      );
      return _i17.OtpScreen(key: args.key);
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i18.PasswordScreen]
class PasswordRoute extends _i27.PageRouteInfo<void> {
  const PasswordRoute({List<_i27.PageRouteInfo>? children})
    : super(PasswordRoute.name, initialChildren: children);

  static const String name = 'PasswordRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i18.PasswordScreen();
    },
  );
}

/// generated route for
/// [_i19.ProfileScreen]
class ProfileRoute extends _i27.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        ProfileRoute.name,
        args: ProfileRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ProfileRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileRouteArgs>(
        orElse: () => const ProfileRouteArgs(),
      );
      return _i19.ProfileScreen(key: args.key);
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i20.ReceiptScreen]
class ReceiptRoute extends _i27.PageRouteInfo<ReceiptRouteArgs> {
  ReceiptRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        ReceiptRoute.name,
        args: ReceiptRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ReceiptRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReceiptRouteArgs>(
        orElse: () => const ReceiptRouteArgs(),
      );
      return _i20.ReceiptScreen(key: args.key);
    },
  );
}

class ReceiptRouteArgs {
  const ReceiptRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'ReceiptRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i21.ReferralScreen]
class ReferralRoute extends _i27.PageRouteInfo<ReferralRouteArgs> {
  ReferralRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        ReferralRoute.name,
        args: ReferralRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ReferralRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReferralRouteArgs>(
        orElse: () => const ReferralRouteArgs(),
      );
      return _i21.ReferralScreen(key: args.key);
    },
  );
}

class ReferralRouteArgs {
  const ReferralRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'ReferralRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i22.SettingsScreen]
class SettingsRoute extends _i27.PageRouteInfo<void> {
  const SettingsRoute({List<_i27.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i22.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i23.SetupAccountScreen]
class SetupAccountRoute extends _i27.PageRouteInfo<void> {
  const SetupAccountRoute({List<_i27.PageRouteInfo>? children})
    : super(SetupAccountRoute.name, initialChildren: children);

  static const String name = 'SetupAccountRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      return const _i23.SetupAccountScreen();
    },
  );
}

/// generated route for
/// [_i24.SupportScreen]
class SupportRoute extends _i27.PageRouteInfo<SupportRouteArgs> {
  SupportRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        SupportRoute.name,
        args: SupportRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'SupportRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SupportRouteArgs>(
        orElse: () => const SupportRouteArgs(),
      );
      return _i24.SupportScreen(key: args.key);
    },
  );
}

class SupportRouteArgs {
  const SupportRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'SupportRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i25.TransactionPinScreen]
class TransactionPinRoute extends _i27.PageRouteInfo<TransactionPinRouteArgs> {
  TransactionPinRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        TransactionPinRoute.name,
        args: TransactionPinRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'TransactionPinRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransactionPinRouteArgs>(
        orElse: () => const TransactionPinRouteArgs(),
      );
      return _i25.TransactionPinScreen(key: args.key);
    },
  );
}

class TransactionPinRouteArgs {
  const TransactionPinRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'TransactionPinRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i26.TransferScreen]
class TransferRoute extends _i27.PageRouteInfo<TransferRouteArgs> {
  TransferRoute({_i28.Key? key, List<_i27.PageRouteInfo>? children})
    : super(
        TransferRoute.name,
        args: TransferRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'TransferRoute';

  static _i27.PageInfo page = _i27.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransferRouteArgs>(
        orElse: () => const TransferRouteArgs(),
      );
      return _i26.TransferScreen(key: args.key);
    },
  );
}

class TransferRouteArgs {
  const TransferRouteArgs({this.key});

  final _i28.Key? key;

  @override
  String toString() {
    return 'TransferRouteArgs{key: $key}';
  }
}
