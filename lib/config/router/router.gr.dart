// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i29;
import 'package:paypadi/core/utils/enums.dart' as _i30;
import 'package:paypadi/src/features/authentication/presentation/views/account_role.dart'
    as _i1;
import 'package:paypadi/src/features/authentication/presentation/views/create_account.dart'
    as _i9;
import 'package:paypadi/src/features/authentication/presentation/views/forgot_password.dart'
    as _i11;
import 'package:paypadi/src/features/authentication/presentation/views/local_authentication.dart'
    as _i15;
import 'package:paypadi/src/features/authentication/presentation/views/login.dart'
    as _i16;
import 'package:paypadi/src/features/authentication/presentation/views/onboarding.dart'
    as _i19;
import 'package:paypadi/src/features/authentication/presentation/views/otp.dart'
    as _i20;
import 'package:paypadi/src/features/authentication/presentation/views/password.dart'
    as _i6;
import 'package:paypadi/src/features/authentication/presentation/views/setup_account.dart'
    as _i25;
import 'package:paypadi/src/features/authentication/presentation/views/transaction_pin.dart'
    as _i8;
import 'package:paypadi/src/features/home/presentation/views/history.dart'
    as _i12;
import 'package:paypadi/src/features/home/presentation/views/home.dart' as _i13;
import 'package:paypadi/src/features/settings/presentation/views/change_password.dart'
    as _i3;
import 'package:paypadi/src/features/settings/presentation/views/change_pin.dart'
    as _i4;
import 'package:paypadi/src/features/settings/presentation/views/change_theme.dart'
    as _i5;
import 'package:paypadi/src/features/settings/presentation/views/legal.dart'
    as _i14;
import 'package:paypadi/src/features/settings/presentation/views/notifications.dart'
    as _i18;
import 'package:paypadi/src/features/settings/presentation/views/profile.dart'
    as _i21;
import 'package:paypadi/src/features/settings/presentation/views/referral.dart'
    as _i23;
import 'package:paypadi/src/features/settings/presentation/views/settings.dart'
    as _i24;
import 'package:paypadi/src/features/settings/presentation/views/support.dart'
    as _i26;
import 'package:paypadi/src/features/transfer/presentation/views/confirm_payment.dart'
    as _i7;
import 'package:paypadi/src/features/transfer/presentation/views/enter_pin.dart'
    as _i10;
import 'package:paypadi/src/features/transfer/presentation/views/make_payment.dart'
    as _i17;
import 'package:paypadi/src/features/transfer/presentation/views/receipt.dart'
    as _i22;
import 'package:paypadi/src/features/transfer/presentation/views/transfer.dart'
    as _i27;
import 'package:paypadi/src/shared/widgets/app_bottom_nav_bar.dart' as _i2;

/// generated route for
/// [_i1.AccountRoleScreen]
class AccountRoleRoute extends _i28.PageRouteInfo<void> {
  const AccountRoleRoute({List<_i28.PageRouteInfo>? children})
    : super(AccountRoleRoute.name, initialChildren: children);

  static const String name = 'AccountRoleRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountRoleScreen();
    },
  );
}

/// generated route for
/// [_i2.AppBottomNavBarScreen]
class AppBottomNavBarRoute extends _i28.PageRouteInfo<void> {
  const AppBottomNavBarRoute({List<_i28.PageRouteInfo>? children})
    : super(AppBottomNavBarRoute.name, initialChildren: children);

  static const String name = 'AppBottomNavBarRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i2.AppBottomNavBarScreen();
    },
  );
}

/// generated route for
/// [_i3.ChangePasswordScreen]
class ChangePasswordRoute extends _i28.PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        ChangePasswordRoute.name,
        args: ChangePasswordRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ChangePasswordRoute';

  static _i28.PageInfo page = _i28.PageInfo(
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

  final _i29.Key? key;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChangePasswordRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i4.ChangePinScreen]
class ChangePinRoute extends _i28.PageRouteInfo<ChangePinRouteArgs> {
  ChangePinRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        ChangePinRoute.name,
        args: ChangePinRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ChangePinRoute';

  static _i28.PageInfo page = _i28.PageInfo(
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

  final _i29.Key? key;

  @override
  String toString() {
    return 'ChangePinRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChangePinRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i5.ChangeThemeScreen]
class ChangeThemeRoute extends _i28.PageRouteInfo<ChangeThemeRouteArgs> {
  ChangeThemeRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        ChangeThemeRoute.name,
        args: ChangeThemeRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ChangeThemeRoute';

  static _i28.PageInfo page = _i28.PageInfo(
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

  final _i29.Key? key;

  @override
  String toString() {
    return 'ChangeThemeRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChangeThemeRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i6.ConfirmPasswordScreen]
class ConfirmPasswordRoute
    extends _i28.PageRouteInfo<ConfirmPasswordRouteArgs> {
  ConfirmPasswordRoute({
    _i29.Key? key,
    required String passwordPin,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         ConfirmPasswordRoute.name,
         args: ConfirmPasswordRouteArgs(key: key, passwordPin: passwordPin),
         initialChildren: children,
       );

  static const String name = 'ConfirmPasswordRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmPasswordRouteArgs>();
      return _i6.ConfirmPasswordScreen(
        key: args.key,
        passwordPin: args.passwordPin,
      );
    },
  );
}

class ConfirmPasswordRouteArgs {
  const ConfirmPasswordRouteArgs({this.key, required this.passwordPin});

  final _i29.Key? key;

  final String passwordPin;

  @override
  String toString() {
    return 'ConfirmPasswordRouteArgs{key: $key, passwordPin: $passwordPin}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConfirmPasswordRouteArgs) return false;
    return key == other.key && passwordPin == other.passwordPin;
  }

  @override
  int get hashCode => key.hashCode ^ passwordPin.hashCode;
}

/// generated route for
/// [_i7.ConfirmPaymentScreen]
class ConfirmPaymentRoute extends _i28.PageRouteInfo<void> {
  const ConfirmPaymentRoute({List<_i28.PageRouteInfo>? children})
    : super(ConfirmPaymentRoute.name, initialChildren: children);

  static const String name = 'ConfirmPaymentRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i7.ConfirmPaymentScreen();
    },
  );
}

/// generated route for
/// [_i8.ConfirmTransactionPinScreen]
class ConfirmTransactionPinRoute
    extends _i28.PageRouteInfo<ConfirmTransactionPinRouteArgs> {
  ConfirmTransactionPinRoute({
    _i29.Key? key,
    required String transactionPin,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         ConfirmTransactionPinRoute.name,
         args: ConfirmTransactionPinRouteArgs(
           key: key,
           transactionPin: transactionPin,
         ),
         initialChildren: children,
       );

  static const String name = 'ConfirmTransactionPinRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmTransactionPinRouteArgs>();
      return _i8.ConfirmTransactionPinScreen(
        key: args.key,
        transactionPin: args.transactionPin,
      );
    },
  );
}

class ConfirmTransactionPinRouteArgs {
  const ConfirmTransactionPinRouteArgs({
    this.key,
    required this.transactionPin,
  });

  final _i29.Key? key;

  final String transactionPin;

  @override
  String toString() {
    return 'ConfirmTransactionPinRouteArgs{key: $key, transactionPin: $transactionPin}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConfirmTransactionPinRouteArgs) return false;
    return key == other.key && transactionPin == other.transactionPin;
  }

  @override
  int get hashCode => key.hashCode ^ transactionPin.hashCode;
}

/// generated route for
/// [_i9.CreateAccountScreen]
class CreateAccountRoute extends _i28.PageRouteInfo<CreateAccountRouteArgs> {
  CreateAccountRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        CreateAccountRoute.name,
        args: CreateAccountRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'CreateAccountRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateAccountRouteArgs>(
        orElse: () => const CreateAccountRouteArgs(),
      );
      return _i9.CreateAccountScreen(key: args.key);
    },
  );
}

class CreateAccountRouteArgs {
  const CreateAccountRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'CreateAccountRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreateAccountRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i10.EnterPinScreen]
class EnterPinRoute extends _i28.PageRouteInfo<void> {
  const EnterPinRoute({List<_i28.PageRouteInfo>? children})
    : super(EnterPinRoute.name, initialChildren: children);

  static const String name = 'EnterPinRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i10.EnterPinScreen();
    },
  );
}

/// generated route for
/// [_i11.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i28.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    _i29.Key? key,
    required String email,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         ForgotPasswordRoute.name,
         args: ForgotPasswordRouteArgs(key: key, email: email),
         initialChildren: children,
       );

  static const String name = 'ForgotPasswordRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>();
      return _i11.ForgotPasswordScreen(key: args.key, email: args.email);
    },
  );
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key, required this.email});

  final _i29.Key? key;

  final String email;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key, email: $email}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ForgotPasswordRouteArgs) return false;
    return key == other.key && email == other.email;
  }

  @override
  int get hashCode => key.hashCode ^ email.hashCode;
}

/// generated route for
/// [_i12.HistoryScreen]
class HistoryRoute extends _i28.PageRouteInfo<void> {
  const HistoryRoute({List<_i28.PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i12.HistoryScreen();
    },
  );
}

/// generated route for
/// [_i13.HomeScreen]
class HomeRoute extends _i28.PageRouteInfo<void> {
  const HomeRoute({List<_i28.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i13.HomeScreen();
    },
  );
}

/// generated route for
/// [_i14.LegalScreen]
class LegalRoute extends _i28.PageRouteInfo<LegalRouteArgs> {
  LegalRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        LegalRoute.name,
        args: LegalRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LegalRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LegalRouteArgs>(
        orElse: () => const LegalRouteArgs(),
      );
      return _i14.LegalScreen(key: args.key);
    },
  );
}

class LegalRouteArgs {
  const LegalRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'LegalRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LegalRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i15.LocalAuthenticationScreen]
class LocalAuthenticationRoute extends _i28.PageRouteInfo<void> {
  const LocalAuthenticationRoute({List<_i28.PageRouteInfo>? children})
    : super(LocalAuthenticationRoute.name, initialChildren: children);

  static const String name = 'LocalAuthenticationRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i15.LocalAuthenticationScreen();
    },
  );
}

/// generated route for
/// [_i16.LoginScreen]
class LoginRoute extends _i28.PageRouteInfo<void> {
  const LoginRoute({List<_i28.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i16.LoginScreen();
    },
  );
}

/// generated route for
/// [_i17.MakePaymentScreen]
class MakePaymentRoute extends _i28.PageRouteInfo<void> {
  const MakePaymentRoute({List<_i28.PageRouteInfo>? children})
    : super(MakePaymentRoute.name, initialChildren: children);

  static const String name = 'MakePaymentRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i17.MakePaymentScreen();
    },
  );
}

/// generated route for
/// [_i18.NotificationsScreen]
class NotificationsRoute extends _i28.PageRouteInfo<NotificationsRouteArgs> {
  NotificationsRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        NotificationsRoute.name,
        args: NotificationsRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'NotificationsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NotificationsRouteArgs>(
        orElse: () => const NotificationsRouteArgs(),
      );
      return _i18.NotificationsScreen(key: args.key);
    },
  );
}

class NotificationsRouteArgs {
  const NotificationsRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'NotificationsRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! NotificationsRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i19.OnboardingScreen]
class OnboardingRoute extends _i28.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        OnboardingRoute.name,
        args: OnboardingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnboardingRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingRouteArgs>(
        orElse: () => const OnboardingRouteArgs(),
      );
      return _i19.OnboardingScreen(key: args.key);
    },
  );
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OnboardingRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i20.OtpScreen]
class OtpRoute extends _i28.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        OtpRoute.name,
        args: OtpRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OtpRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>(
        orElse: () => const OtpRouteArgs(),
      );
      return _i20.OtpScreen(key: args.key);
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtpRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i6.PasswordScreen]
class PasswordRoute extends _i28.PageRouteInfo<void> {
  const PasswordRoute({List<_i28.PageRouteInfo>? children})
    : super(PasswordRoute.name, initialChildren: children);

  static const String name = 'PasswordRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i6.PasswordScreen();
    },
  );
}

/// generated route for
/// [_i21.ProfileScreen]
class ProfileRoute extends _i28.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        ProfileRoute.name,
        args: ProfileRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ProfileRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileRouteArgs>(
        orElse: () => const ProfileRouteArgs(),
      );
      return _i21.ProfileScreen(key: args.key);
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProfileRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i22.ReceiptScreen]
class ReceiptRoute extends _i28.PageRouteInfo<void> {
  const ReceiptRoute({List<_i28.PageRouteInfo>? children})
    : super(ReceiptRoute.name, initialChildren: children);

  static const String name = 'ReceiptRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i22.ReceiptScreen();
    },
  );
}

/// generated route for
/// [_i23.ReferralScreen]
class ReferralRoute extends _i28.PageRouteInfo<ReferralRouteArgs> {
  ReferralRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        ReferralRoute.name,
        args: ReferralRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ReferralRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReferralRouteArgs>(
        orElse: () => const ReferralRouteArgs(),
      );
      return _i23.ReferralScreen(key: args.key);
    },
  );
}

class ReferralRouteArgs {
  const ReferralRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'ReferralRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReferralRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i24.SettingsScreen]
class SettingsRoute extends _i28.PageRouteInfo<void> {
  const SettingsRoute({List<_i28.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i24.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i25.SetupAccountScreen]
class SetupAccountRoute extends _i28.PageRouteInfo<SetupAccountRouteArgs> {
  SetupAccountRoute({
    _i29.Key? key,
    required _i30.AccountRole role,
    List<_i28.PageRouteInfo>? children,
  }) : super(
         SetupAccountRoute.name,
         args: SetupAccountRouteArgs(key: key, role: role),
         initialChildren: children,
       );

  static const String name = 'SetupAccountRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetupAccountRouteArgs>();
      return _i25.SetupAccountScreen(key: args.key, role: args.role);
    },
  );
}

class SetupAccountRouteArgs {
  const SetupAccountRouteArgs({this.key, required this.role});

  final _i29.Key? key;

  final _i30.AccountRole role;

  @override
  String toString() {
    return 'SetupAccountRouteArgs{key: $key, role: $role}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SetupAccountRouteArgs) return false;
    return key == other.key && role == other.role;
  }

  @override
  int get hashCode => key.hashCode ^ role.hashCode;
}

/// generated route for
/// [_i26.SupportScreen]
class SupportRoute extends _i28.PageRouteInfo<SupportRouteArgs> {
  SupportRoute({_i29.Key? key, List<_i28.PageRouteInfo>? children})
    : super(
        SupportRoute.name,
        args: SupportRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'SupportRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SupportRouteArgs>(
        orElse: () => const SupportRouteArgs(),
      );
      return _i26.SupportScreen(key: args.key);
    },
  );
}

class SupportRouteArgs {
  const SupportRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'SupportRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SupportRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i8.TransactionPinScreen]
class TransactionPinRoute extends _i28.PageRouteInfo<void> {
  const TransactionPinRoute({List<_i28.PageRouteInfo>? children})
    : super(TransactionPinRoute.name, initialChildren: children);

  static const String name = 'TransactionPinRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i8.TransactionPinScreen();
    },
  );
}

/// generated route for
/// [_i27.TransferScreen]
class TransferRoute extends _i28.PageRouteInfo<void> {
  const TransferRoute({List<_i28.PageRouteInfo>? children})
    : super(TransferRoute.name, initialChildren: children);

  static const String name = 'TransferRoute';

  static _i28.PageInfo page = _i28.PageInfo(
    name,
    builder: (data) {
      return const _i27.TransferScreen();
    },
  );
}
