// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i29;
import 'package:flutter/foundation.dart' as _i31;
import 'package:flutter/material.dart' as _i30;
import 'package:paypadi/core/utils/enums.dart' as _i32;
import 'package:paypadi/src/features/authentication/presentation/views/account_role.dart'
    as _i1;
import 'package:paypadi/src/features/authentication/presentation/views/create_account.dart'
    as _i10;
import 'package:paypadi/src/features/authentication/presentation/views/forgot_password.dart'
    as _i12;
import 'package:paypadi/src/features/authentication/presentation/views/local_authentication.dart'
    as _i16;
import 'package:paypadi/src/features/authentication/presentation/views/login.dart'
    as _i17;
import 'package:paypadi/src/features/authentication/presentation/views/onboarding.dart'
    as _i20;
import 'package:paypadi/src/features/authentication/presentation/views/otp.dart'
    as _i21;
import 'package:paypadi/src/features/authentication/presentation/views/password.dart'
    as _i7;
import 'package:paypadi/src/features/authentication/presentation/views/setup_account.dart'
    as _i26;
import 'package:paypadi/src/features/authentication/presentation/views/transaction_pin.dart'
    as _i9;
import 'package:paypadi/src/features/home/presentation/views/add_money.dart'
    as _i2;
import 'package:paypadi/src/features/home/presentation/views/history.dart'
    as _i13;
import 'package:paypadi/src/features/home/presentation/views/home.dart' as _i14;
import 'package:paypadi/src/features/settings/presentation/views/change_password.dart'
    as _i4;
import 'package:paypadi/src/features/settings/presentation/views/change_pin.dart'
    as _i5;
import 'package:paypadi/src/features/settings/presentation/views/change_theme.dart'
    as _i6;
import 'package:paypadi/src/features/settings/presentation/views/legal.dart'
    as _i15;
import 'package:paypadi/src/features/settings/presentation/views/notifications.dart'
    as _i19;
import 'package:paypadi/src/features/settings/presentation/views/profile.dart'
    as _i22;
import 'package:paypadi/src/features/settings/presentation/views/referral.dart'
    as _i24;
import 'package:paypadi/src/features/settings/presentation/views/settings.dart'
    as _i25;
import 'package:paypadi/src/features/settings/presentation/views/support.dart'
    as _i27;
import 'package:paypadi/src/features/transfer/presentation/views/confirm_payment.dart'
    as _i8;
import 'package:paypadi/src/features/transfer/presentation/views/enter_pin.dart'
    as _i11;
import 'package:paypadi/src/features/transfer/presentation/views/make_payment.dart'
    as _i18;
import 'package:paypadi/src/features/transfer/presentation/views/receipt.dart'
    as _i23;
import 'package:paypadi/src/features/transfer/presentation/views/transfer.dart'
    as _i28;
import 'package:paypadi/src/shared/widgets/app_bottom_nav_bar.dart' as _i3;

/// generated route for
/// [_i1.AccountRoleScreen]
class AccountRoleRoute extends _i29.PageRouteInfo<void> {
  const AccountRoleRoute({List<_i29.PageRouteInfo>? children})
    : super(AccountRoleRoute.name, initialChildren: children);

  static const String name = 'AccountRoleRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountRoleScreen();
    },
  );
}

/// generated route for
/// [_i2.AddMoneyScreen]
class AddMoneyRoute extends _i29.PageRouteInfo<void> {
  const AddMoneyRoute({List<_i29.PageRouteInfo>? children})
    : super(AddMoneyRoute.name, initialChildren: children);

  static const String name = 'AddMoneyRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i2.AddMoneyScreen();
    },
  );
}

/// generated route for
/// [_i3.AppBottomNavBarScreen]
class AppBottomNavBarRoute extends _i29.PageRouteInfo<void> {
  const AppBottomNavBarRoute({List<_i29.PageRouteInfo>? children})
    : super(AppBottomNavBarRoute.name, initialChildren: children);

  static const String name = 'AppBottomNavBarRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i3.AppBottomNavBarScreen();
    },
  );
}

/// generated route for
/// [_i4.ChangePasswordScreen]
class ChangePasswordRoute extends _i29.PageRouteInfo<void> {
  const ChangePasswordRoute({List<_i29.PageRouteInfo>? children})
    : super(ChangePasswordRoute.name, initialChildren: children);

  static const String name = 'ChangePasswordRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i4.ChangePasswordScreen();
    },
  );
}

/// generated route for
/// [_i5.ChangePinScreen]
class ChangePinRoute extends _i29.PageRouteInfo<void> {
  const ChangePinRoute({List<_i29.PageRouteInfo>? children})
    : super(ChangePinRoute.name, initialChildren: children);

  static const String name = 'ChangePinRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i5.ChangePinScreen();
    },
  );
}

/// generated route for
/// [_i6.ChangeThemeScreen]
class ChangeThemeRoute extends _i29.PageRouteInfo<void> {
  const ChangeThemeRoute({List<_i29.PageRouteInfo>? children})
    : super(ChangeThemeRoute.name, initialChildren: children);

  static const String name = 'ChangeThemeRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i6.ChangeThemeScreen();
    },
  );
}

/// generated route for
/// [_i7.ConfirmPasswordScreen]
class ConfirmPasswordRoute
    extends _i29.PageRouteInfo<ConfirmPasswordRouteArgs> {
  ConfirmPasswordRoute({
    _i30.Key? key,
    _i30.ValueSetter<String>? onSubmit,
    List<_i29.PageRouteInfo>? children,
  }) : super(
         ConfirmPasswordRoute.name,
         args: ConfirmPasswordRouteArgs(key: key, onSubmit: onSubmit),
         initialChildren: children,
       );

  static const String name = 'ConfirmPasswordRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmPasswordRouteArgs>(
        orElse: () => const ConfirmPasswordRouteArgs(),
      );
      return _i7.ConfirmPasswordScreen(key: args.key, onSubmit: args.onSubmit);
    },
  );
}

class ConfirmPasswordRouteArgs {
  const ConfirmPasswordRouteArgs({this.key, this.onSubmit});

  final _i30.Key? key;

  final _i30.ValueSetter<String>? onSubmit;

  @override
  String toString() {
    return 'ConfirmPasswordRouteArgs{key: $key, onSubmit: $onSubmit}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConfirmPasswordRouteArgs) return false;
    return key == other.key && onSubmit == other.onSubmit;
  }

  @override
  int get hashCode => key.hashCode ^ onSubmit.hashCode;
}

/// generated route for
/// [_i8.ConfirmPaymentScreen]
class ConfirmPaymentRoute extends _i29.PageRouteInfo<void> {
  const ConfirmPaymentRoute({List<_i29.PageRouteInfo>? children})
    : super(ConfirmPaymentRoute.name, initialChildren: children);

  static const String name = 'ConfirmPaymentRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i8.ConfirmPaymentScreen();
    },
  );
}

/// generated route for
/// [_i9.ConfirmTransactionPinScreen]
class ConfirmTransactionPinRoute
    extends _i29.PageRouteInfo<ConfirmTransactionPinRouteArgs> {
  ConfirmTransactionPinRoute({
    _i30.Key? key,
    _i30.ValueSetter<String>? onSubmit,
    List<_i29.PageRouteInfo>? children,
  }) : super(
         ConfirmTransactionPinRoute.name,
         args: ConfirmTransactionPinRouteArgs(key: key, onSubmit: onSubmit),
         initialChildren: children,
       );

  static const String name = 'ConfirmTransactionPinRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmTransactionPinRouteArgs>(
        orElse: () => const ConfirmTransactionPinRouteArgs(),
      );
      return _i9.ConfirmTransactionPinScreen(
        key: args.key,
        onSubmit: args.onSubmit,
      );
    },
  );
}

class ConfirmTransactionPinRouteArgs {
  const ConfirmTransactionPinRouteArgs({this.key, this.onSubmit});

  final _i30.Key? key;

  final _i30.ValueSetter<String>? onSubmit;

  @override
  String toString() {
    return 'ConfirmTransactionPinRouteArgs{key: $key, onSubmit: $onSubmit}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConfirmTransactionPinRouteArgs) return false;
    return key == other.key && onSubmit == other.onSubmit;
  }

  @override
  int get hashCode => key.hashCode ^ onSubmit.hashCode;
}

/// generated route for
/// [_i10.CreateAccountScreen]
class CreateAccountRoute extends _i29.PageRouteInfo<CreateAccountRouteArgs> {
  CreateAccountRoute({_i30.Key? key, List<_i29.PageRouteInfo>? children})
    : super(
        CreateAccountRoute.name,
        args: CreateAccountRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'CreateAccountRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateAccountRouteArgs>(
        orElse: () => const CreateAccountRouteArgs(),
      );
      return _i10.CreateAccountScreen(key: args.key);
    },
  );
}

class CreateAccountRouteArgs {
  const CreateAccountRouteArgs({this.key});

  final _i30.Key? key;

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
/// [_i11.EnterPinScreen]
class EnterPinRoute extends _i29.PageRouteInfo<void> {
  const EnterPinRoute({List<_i29.PageRouteInfo>? children})
    : super(EnterPinRoute.name, initialChildren: children);

  static const String name = 'EnterPinRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i11.EnterPinScreen();
    },
  );
}

/// generated route for
/// [_i12.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i29.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    _i30.Key? key,
    required String email,
    List<_i29.PageRouteInfo>? children,
  }) : super(
         ForgotPasswordRoute.name,
         args: ForgotPasswordRouteArgs(key: key, email: email),
         initialChildren: children,
       );

  static const String name = 'ForgotPasswordRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>();
      return _i12.ForgotPasswordScreen(key: args.key, email: args.email);
    },
  );
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key, required this.email});

  final _i30.Key? key;

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
/// [_i13.HistoryScreen]
class HistoryRoute extends _i29.PageRouteInfo<void> {
  const HistoryRoute({List<_i29.PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i13.HistoryScreen();
    },
  );
}

/// generated route for
/// [_i14.HomeScreen]
class HomeRoute extends _i29.PageRouteInfo<void> {
  const HomeRoute({List<_i29.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i14.HomeScreen();
    },
  );
}

/// generated route for
/// [_i15.LegalScreen]
class LegalRoute extends _i29.PageRouteInfo<LegalRouteArgs> {
  LegalRoute({_i30.Key? key, List<_i29.PageRouteInfo>? children})
    : super(
        LegalRoute.name,
        args: LegalRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LegalRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LegalRouteArgs>(
        orElse: () => const LegalRouteArgs(),
      );
      return _i15.LegalScreen(key: args.key);
    },
  );
}

class LegalRouteArgs {
  const LegalRouteArgs({this.key});

  final _i30.Key? key;

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
/// [_i16.LocalAuthenticationScreen]
class LocalAuthenticationRoute extends _i29.PageRouteInfo<void> {
  const LocalAuthenticationRoute({List<_i29.PageRouteInfo>? children})
    : super(LocalAuthenticationRoute.name, initialChildren: children);

  static const String name = 'LocalAuthenticationRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i16.LocalAuthenticationScreen();
    },
  );
}

/// generated route for
/// [_i17.LoginScreen]
class LoginRoute extends _i29.PageRouteInfo<void> {
  const LoginRoute({List<_i29.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i17.LoginScreen();
    },
  );
}

/// generated route for
/// [_i18.MakePaymentScreen]
class MakePaymentRoute extends _i29.PageRouteInfo<void> {
  const MakePaymentRoute({List<_i29.PageRouteInfo>? children})
    : super(MakePaymentRoute.name, initialChildren: children);

  static const String name = 'MakePaymentRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i18.MakePaymentScreen();
    },
  );
}

/// generated route for
/// [_i19.NotificationsScreen]
class NotificationsRoute extends _i29.PageRouteInfo<void> {
  const NotificationsRoute({List<_i29.PageRouteInfo>? children})
    : super(NotificationsRoute.name, initialChildren: children);

  static const String name = 'NotificationsRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i19.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i20.OnboardingScreen]
class OnboardingRoute extends _i29.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({_i30.Key? key, List<_i29.PageRouteInfo>? children})
    : super(
        OnboardingRoute.name,
        args: OnboardingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnboardingRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingRouteArgs>(
        orElse: () => const OnboardingRouteArgs(),
      );
      return _i20.OnboardingScreen(key: args.key);
    },
  );
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i30.Key? key;

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
/// [_i21.OtpScreen]
class OtpRoute extends _i29.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({_i30.Key? key, List<_i29.PageRouteInfo>? children})
    : super(
        OtpRoute.name,
        args: OtpRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OtpRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>(
        orElse: () => const OtpRouteArgs(),
      );
      return _i21.OtpScreen(key: args.key);
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key});

  final _i30.Key? key;

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
/// [_i7.PasswordScreen]
class PasswordRoute extends _i29.PageRouteInfo<PasswordRouteArgs> {
  PasswordRoute({
    _i30.Key? key,
    _i30.ValueSetter<String>? onSubmit,
    List<_i29.PageRouteInfo>? children,
  }) : super(
         PasswordRoute.name,
         args: PasswordRouteArgs(key: key, onSubmit: onSubmit),
         initialChildren: children,
       );

  static const String name = 'PasswordRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PasswordRouteArgs>(
        orElse: () => const PasswordRouteArgs(),
      );
      return _i7.PasswordScreen(key: args.key, onSubmit: args.onSubmit);
    },
  );
}

class PasswordRouteArgs {
  const PasswordRouteArgs({this.key, this.onSubmit});

  final _i30.Key? key;

  final _i30.ValueSetter<String>? onSubmit;

  @override
  String toString() {
    return 'PasswordRouteArgs{key: $key, onSubmit: $onSubmit}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PasswordRouteArgs) return false;
    return key == other.key && onSubmit == other.onSubmit;
  }

  @override
  int get hashCode => key.hashCode ^ onSubmit.hashCode;
}

/// generated route for
/// [_i22.ProfileScreen]
class ProfileRoute extends _i29.PageRouteInfo<void> {
  const ProfileRoute({List<_i29.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i22.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i23.ReceiptScreen]
class ReceiptRoute extends _i29.PageRouteInfo<ReceiptRouteArgs> {
  ReceiptRoute({_i31.Key? key, List<_i29.PageRouteInfo>? children})
    : super(
        ReceiptRoute.name,
        args: ReceiptRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'ReceiptRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReceiptRouteArgs>(
        orElse: () => const ReceiptRouteArgs(),
      );
      return _i23.ReceiptScreen(key: args.key);
    },
  );
}

class ReceiptRouteArgs {
  const ReceiptRouteArgs({this.key});

  final _i31.Key? key;

  @override
  String toString() {
    return 'ReceiptRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReceiptRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i24.ReferralScreen]
class ReferralRoute extends _i29.PageRouteInfo<void> {
  const ReferralRoute({List<_i29.PageRouteInfo>? children})
    : super(ReferralRoute.name, initialChildren: children);

  static const String name = 'ReferralRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i24.ReferralScreen();
    },
  );
}

/// generated route for
/// [_i25.SettingsScreen]
class SettingsRoute extends _i29.PageRouteInfo<void> {
  const SettingsRoute({List<_i29.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i25.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i26.SetupAccountScreen]
class SetupAccountRoute extends _i29.PageRouteInfo<SetupAccountRouteArgs> {
  SetupAccountRoute({
    _i30.Key? key,
    required _i32.AccountRole role,
    List<_i29.PageRouteInfo>? children,
  }) : super(
         SetupAccountRoute.name,
         args: SetupAccountRouteArgs(key: key, role: role),
         initialChildren: children,
       );

  static const String name = 'SetupAccountRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetupAccountRouteArgs>();
      return _i26.SetupAccountScreen(key: args.key, role: args.role);
    },
  );
}

class SetupAccountRouteArgs {
  const SetupAccountRouteArgs({this.key, required this.role});

  final _i30.Key? key;

  final _i32.AccountRole role;

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
/// [_i27.SupportScreen]
class SupportRoute extends _i29.PageRouteInfo<void> {
  const SupportRoute({List<_i29.PageRouteInfo>? children})
    : super(SupportRoute.name, initialChildren: children);

  static const String name = 'SupportRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i27.SupportScreen();
    },
  );
}

/// generated route for
/// [_i9.TransactionPinScreen]
class TransactionPinRoute extends _i29.PageRouteInfo<TransactionPinRouteArgs> {
  TransactionPinRoute({
    _i30.Key? key,
    _i30.ValueSetter<String>? onSubmit,
    List<_i29.PageRouteInfo>? children,
  }) : super(
         TransactionPinRoute.name,
         args: TransactionPinRouteArgs(key: key, onSubmit: onSubmit),
         initialChildren: children,
       );

  static const String name = 'TransactionPinRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransactionPinRouteArgs>(
        orElse: () => const TransactionPinRouteArgs(),
      );
      return _i9.TransactionPinScreen(key: args.key, onSubmit: args.onSubmit);
    },
  );
}

class TransactionPinRouteArgs {
  const TransactionPinRouteArgs({this.key, this.onSubmit});

  final _i30.Key? key;

  final _i30.ValueSetter<String>? onSubmit;

  @override
  String toString() {
    return 'TransactionPinRouteArgs{key: $key, onSubmit: $onSubmit}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TransactionPinRouteArgs) return false;
    return key == other.key && onSubmit == other.onSubmit;
  }

  @override
  int get hashCode => key.hashCode ^ onSubmit.hashCode;
}

/// generated route for
/// [_i28.TransferScreen]
class TransferRoute extends _i29.PageRouteInfo<void> {
  const TransferRoute({List<_i29.PageRouteInfo>? children})
    : super(TransferRoute.name, initialChildren: children);

  static const String name = 'TransferRoute';

  static _i29.PageInfo page = _i29.PageInfo(
    name,
    builder: (data) {
      return const _i28.TransferScreen();
    },
  );
}
