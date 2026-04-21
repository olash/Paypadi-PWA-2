// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i36;
import 'package:flutter/material.dart' as _i37;
import 'package:paypadi/src/features/authentication/presentation/views/account_role_screen.dart'
    as _i1;
import 'package:paypadi/src/features/authentication/presentation/views/biometric_auth_screen.dart'
    as _i2;
import 'package:paypadi/src/features/authentication/presentation/views/create_account_screen.dart'
    as _i9;
import 'package:paypadi/src/features/authentication/presentation/views/login_screen.dart'
    as _i19;
import 'package:paypadi/src/features/authentication/presentation/views/onboarding_screen.dart'
    as _i22;
import 'package:paypadi/src/features/authentication/presentation/views/otp_screen.dart'
    as _i23;
import 'package:paypadi/src/features/authentication/presentation/views/payout_account_screen.dart'
    as _i24;
import 'package:paypadi/src/features/authentication/presentation/views/setup_driver_screen.dart'
    as _i30;
import 'package:paypadi/src/features/authentication/presentation/views/setup_passenger_screen.dart'
    as _i31;
import 'package:paypadi/src/features/authentication/presentation/views/sign_in_screen.dart'
    as _i32;
import 'package:paypadi/src/features/home/views/dashboard_screen.dart' as _i12;
import 'package:paypadi/src/features/home/views/deposit_money_screen.dart'
    as _i13;
import 'package:paypadi/src/features/home/views/home_screen.dart' as _i17;
import 'package:paypadi/src/features/home/views/qr_code_screen.dart' as _i26;
import 'package:paypadi/src/features/home/views/transaction_history_screen.dart'
    as _i34;
import 'package:paypadi/src/features/settings/views/change_password_screen.dart'
    as _i3;
import 'package:paypadi/src/features/settings/views/change_pin_screen.dart'
    as _i4;
import 'package:paypadi/src/features/settings/views/change_theme_screen.dart'
    as _i5;
import 'package:paypadi/src/features/settings/views/legal_screen.dart' as _i18;
import 'package:paypadi/src/features/settings/views/notifications_screen.dart'
    as _i21;
import 'package:paypadi/src/features/settings/views/profile_screen.dart'
    as _i25;
import 'package:paypadi/src/features/settings/views/referral_screen.dart'
    as _i28;
import 'package:paypadi/src/features/settings/views/settings_screen.dart'
    as _i29;
import 'package:paypadi/src/features/settings/views/support_screen.dart'
    as _i33;
import 'package:paypadi/src/features/transfer/views/confirm_payment.dart'
    as _i7;
import 'package:paypadi/src/features/transfer/views/enter_pin_screen.dart'
    as _i15;
import 'package:paypadi/src/features/transfer/views/make_payment_screen.dart'
    as _i20;
import 'package:paypadi/src/features/transfer/views/receipt_screen.dart'
    as _i27;
import 'package:paypadi/src/features/transfer/views/transfer_screen.dart'
    as _i35;
import 'package:paypadi/src/shared/views/password/confirm_password_screen.dart'
    as _i6;
import 'package:paypadi/src/shared/views/password/create_password_screen.dart'
    as _i10;
import 'package:paypadi/src/shared/views/password/enter_password_screen.dart'
    as _i14;
import 'package:paypadi/src/shared/views/password/forgot_password_screen.dart'
    as _i16;
import 'package:paypadi/src/shared/views/transaction_pin/confirm_transaction_pin_screen.dart'
    as _i8;
import 'package:paypadi/src/shared/views/transaction_pin/create_transaction_pin_screen.dart'
    as _i11;

/// generated route for
/// [_i1.AccountRoleScreen]
class AccountRoleRoute extends _i36.PageRouteInfo<void> {
  const AccountRoleRoute({List<_i36.PageRouteInfo>? children})
    : super(AccountRoleRoute.name, initialChildren: children);

  static const String name = 'AccountRoleRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountRoleScreen();
    },
  );
}

/// generated route for
/// [_i2.BiometricAuthenticationScreen]
class BiometricAuthenticationRoute extends _i36.PageRouteInfo<void> {
  const BiometricAuthenticationRoute({List<_i36.PageRouteInfo>? children})
    : super(BiometricAuthenticationRoute.name, initialChildren: children);

  static const String name = 'BiometricAuthenticationRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i2.BiometricAuthenticationScreen();
    },
  );
}

/// generated route for
/// [_i3.ChangePasswordScreen]
class ChangePasswordRoute extends _i36.PageRouteInfo<void> {
  const ChangePasswordRoute({List<_i36.PageRouteInfo>? children})
    : super(ChangePasswordRoute.name, initialChildren: children);

  static const String name = 'ChangePasswordRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i3.ChangePasswordScreen();
    },
  );
}

/// generated route for
/// [_i4.ChangePinScreen]
class ChangePinRoute extends _i36.PageRouteInfo<void> {
  const ChangePinRoute({List<_i36.PageRouteInfo>? children})
    : super(ChangePinRoute.name, initialChildren: children);

  static const String name = 'ChangePinRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i4.ChangePinScreen();
    },
  );
}

/// generated route for
/// [_i5.ChangeThemeScreen]
class ChangeThemeRoute extends _i36.PageRouteInfo<void> {
  const ChangeThemeRoute({List<_i36.PageRouteInfo>? children})
    : super(ChangeThemeRoute.name, initialChildren: children);

  static const String name = 'ChangeThemeRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i5.ChangeThemeScreen();
    },
  );
}

/// generated route for
/// [_i6.ConfirmPasswordScreen]
class ConfirmPasswordRoute
    extends _i36.PageRouteInfo<ConfirmPasswordRouteArgs> {
  ConfirmPasswordRoute({
    _i37.Key? key,
    required String password,
    List<_i36.PageRouteInfo>? children,
  }) : super(
         ConfirmPasswordRoute.name,
         args: ConfirmPasswordRouteArgs(key: key, password: password),
         initialChildren: children,
       );

  static const String name = 'ConfirmPasswordRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmPasswordRouteArgs>();
      return _i6.ConfirmPasswordScreen(key: args.key, password: args.password);
    },
  );
}

class ConfirmPasswordRouteArgs {
  const ConfirmPasswordRouteArgs({this.key, required this.password});

  final _i37.Key? key;

  final String password;

  @override
  String toString() {
    return 'ConfirmPasswordRouteArgs{key: $key, password: $password}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConfirmPasswordRouteArgs) return false;
    return key == other.key && password == other.password;
  }

  @override
  int get hashCode => key.hashCode ^ password.hashCode;
}

/// generated route for
/// [_i7.ConfirmPaymentScreen]
class ConfirmPaymentRoute extends _i36.PageRouteInfo<void> {
  const ConfirmPaymentRoute({List<_i36.PageRouteInfo>? children})
    : super(ConfirmPaymentRoute.name, initialChildren: children);

  static const String name = 'ConfirmPaymentRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i7.ConfirmPaymentScreen();
    },
  );
}

/// generated route for
/// [_i8.ConfirmTransactionPinScreen]
class ConfirmTransactionPinRoute
    extends _i36.PageRouteInfo<ConfirmTransactionPinRouteArgs> {
  ConfirmTransactionPinRoute({
    _i37.Key? key,
    required String pin,
    List<_i36.PageRouteInfo>? children,
  }) : super(
         ConfirmTransactionPinRoute.name,
         args: ConfirmTransactionPinRouteArgs(key: key, pin: pin),
         initialChildren: children,
       );

  static const String name = 'ConfirmTransactionPinRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmTransactionPinRouteArgs>();
      return _i8.ConfirmTransactionPinScreen(key: args.key, pin: args.pin);
    },
  );
}

class ConfirmTransactionPinRouteArgs {
  const ConfirmTransactionPinRouteArgs({this.key, required this.pin});

  final _i37.Key? key;

  final String pin;

  @override
  String toString() {
    return 'ConfirmTransactionPinRouteArgs{key: $key, pin: $pin}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConfirmTransactionPinRouteArgs) return false;
    return key == other.key && pin == other.pin;
  }

  @override
  int get hashCode => key.hashCode ^ pin.hashCode;
}

/// generated route for
/// [_i9.CreateAccountScreen]
class CreateAccountRoute extends _i36.PageRouteInfo<CreateAccountRouteArgs> {
  CreateAccountRoute({_i37.Key? key, List<_i36.PageRouteInfo>? children})
    : super(
        CreateAccountRoute.name,
        args: CreateAccountRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'CreateAccountRoute';

  static _i36.PageInfo page = _i36.PageInfo(
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

  final _i37.Key? key;

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
/// [_i10.CreatePasswordScreen]
class CreatePasswordRoute extends _i36.PageRouteInfo<void> {
  const CreatePasswordRoute({List<_i36.PageRouteInfo>? children})
    : super(CreatePasswordRoute.name, initialChildren: children);

  static const String name = 'CreatePasswordRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i10.CreatePasswordScreen();
    },
  );
}

/// generated route for
/// [_i11.CreateTransactionPinScreen]
class CreateTransactionPinRoute extends _i36.PageRouteInfo<void> {
  const CreateTransactionPinRoute({List<_i36.PageRouteInfo>? children})
    : super(CreateTransactionPinRoute.name, initialChildren: children);

  static const String name = 'CreateTransactionPinRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i11.CreateTransactionPinScreen();
    },
  );
}

/// generated route for
/// [_i12.DashboardScreen]
class DashboardRoute extends _i36.PageRouteInfo<void> {
  const DashboardRoute({List<_i36.PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i12.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i13.DepositMoneyScreen]
class DepositMoneyRoute extends _i36.PageRouteInfo<void> {
  const DepositMoneyRoute({List<_i36.PageRouteInfo>? children})
    : super(DepositMoneyRoute.name, initialChildren: children);

  static const String name = 'DepositMoneyRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i13.DepositMoneyScreen();
    },
  );
}

/// generated route for
/// [_i14.EnterPasswordScreen]
class EnterPasswordRoute extends _i36.PageRouteInfo<EnterPasswordRouteArgs> {
  EnterPasswordRoute({
    _i37.Key? key,
    required String phoneNumber,
    List<_i36.PageRouteInfo>? children,
  }) : super(
         EnterPasswordRoute.name,
         args: EnterPasswordRouteArgs(key: key, phoneNumber: phoneNumber),
         initialChildren: children,
       );

  static const String name = 'EnterPasswordRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EnterPasswordRouteArgs>();
      return _i14.EnterPasswordScreen(
        key: args.key,
        phoneNumber: args.phoneNumber,
      );
    },
  );
}

class EnterPasswordRouteArgs {
  const EnterPasswordRouteArgs({this.key, required this.phoneNumber});

  final _i37.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'EnterPasswordRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EnterPasswordRouteArgs) return false;
    return key == other.key && phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode => key.hashCode ^ phoneNumber.hashCode;
}

/// generated route for
/// [_i15.EnterPinScreen]
class EnterPinRoute extends _i36.PageRouteInfo<void> {
  const EnterPinRoute({List<_i36.PageRouteInfo>? children})
    : super(EnterPinRoute.name, initialChildren: children);

  static const String name = 'EnterPinRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i15.EnterPinScreen();
    },
  );
}

/// generated route for
/// [_i16.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i36.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    _i37.Key? key,
    required String email,
    List<_i36.PageRouteInfo>? children,
  }) : super(
         ForgotPasswordRoute.name,
         args: ForgotPasswordRouteArgs(key: key, email: email),
         initialChildren: children,
       );

  static const String name = 'ForgotPasswordRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>();
      return _i16.ForgotPasswordScreen(key: args.key, email: args.email);
    },
  );
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key, required this.email});

  final _i37.Key? key;

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
/// [_i17.HomeScreen]
class HomeRoute extends _i36.PageRouteInfo<void> {
  const HomeRoute({List<_i36.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i17.HomeScreen();
    },
  );
}

/// generated route for
/// [_i18.LegalScreen]
class LegalRoute extends _i36.PageRouteInfo<LegalRouteArgs> {
  LegalRoute({_i37.Key? key, List<_i36.PageRouteInfo>? children})
    : super(
        LegalRoute.name,
        args: LegalRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'LegalRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LegalRouteArgs>(
        orElse: () => const LegalRouteArgs(),
      );
      return _i18.LegalScreen(key: args.key);
    },
  );
}

class LegalRouteArgs {
  const LegalRouteArgs({this.key});

  final _i37.Key? key;

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
/// [_i19.LoginScreen]
class LoginRoute extends _i36.PageRouteInfo<void> {
  const LoginRoute({List<_i36.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i19.LoginScreen();
    },
  );
}

/// generated route for
/// [_i20.MakePaymentScreen]
class MakePaymentRoute extends _i36.PageRouteInfo<MakePaymentRouteArgs> {
  MakePaymentRoute({
    _i37.Key? key,
    required String receipientNumber,
    List<_i36.PageRouteInfo>? children,
  }) : super(
         MakePaymentRoute.name,
         args: MakePaymentRouteArgs(
           key: key,
           receipientNumber: receipientNumber,
         ),
         initialChildren: children,
       );

  static const String name = 'MakePaymentRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MakePaymentRouteArgs>();
      return _i20.MakePaymentScreen(
        key: args.key,
        receipientNumber: args.receipientNumber,
      );
    },
  );
}

class MakePaymentRouteArgs {
  const MakePaymentRouteArgs({this.key, required this.receipientNumber});

  final _i37.Key? key;

  final String receipientNumber;

  @override
  String toString() {
    return 'MakePaymentRouteArgs{key: $key, receipientNumber: $receipientNumber}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MakePaymentRouteArgs) return false;
    return key == other.key && receipientNumber == other.receipientNumber;
  }

  @override
  int get hashCode => key.hashCode ^ receipientNumber.hashCode;
}

/// generated route for
/// [_i21.NotificationsScreen]
class NotificationsRoute extends _i36.PageRouteInfo<void> {
  const NotificationsRoute({List<_i36.PageRouteInfo>? children})
    : super(NotificationsRoute.name, initialChildren: children);

  static const String name = 'NotificationsRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i21.NotificationsScreen();
    },
  );
}

/// generated route for
/// [_i22.OnboardingScreen]
class OnboardingRoute extends _i36.PageRouteInfo<void> {
  const OnboardingRoute({List<_i36.PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i22.OnboardingScreen();
    },
  );
}

/// generated route for
/// [_i23.OtpScreen]
class OtpRoute extends _i36.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    _i37.Key? key,
    required String phoneNumber,
    List<_i36.PageRouteInfo>? children,
  }) : super(
         OtpRoute.name,
         args: OtpRouteArgs(key: key, phoneNumber: phoneNumber),
         initialChildren: children,
       );

  static const String name = 'OtpRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>();
      return _i23.OtpScreen(key: args.key, phoneNumber: args.phoneNumber);
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key, required this.phoneNumber});

  final _i37.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OtpRouteArgs) return false;
    return key == other.key && phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode => key.hashCode ^ phoneNumber.hashCode;
}

/// generated route for
/// [_i24.PayoutAccountScreen]
class PayoutAccountRoute extends _i36.PageRouteInfo<void> {
  const PayoutAccountRoute({List<_i36.PageRouteInfo>? children})
    : super(PayoutAccountRoute.name, initialChildren: children);

  static const String name = 'PayoutAccountRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i24.PayoutAccountScreen();
    },
  );
}

/// generated route for
/// [_i25.ProfileScreen]
class ProfileRoute extends _i36.PageRouteInfo<void> {
  const ProfileRoute({List<_i36.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i25.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i26.QrCodeScreen]
class QrCodeRoute extends _i36.PageRouteInfo<void> {
  const QrCodeRoute({List<_i36.PageRouteInfo>? children})
    : super(QrCodeRoute.name, initialChildren: children);

  static const String name = 'QrCodeRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i26.QrCodeScreen();
    },
  );
}

/// generated route for
/// [_i27.ReceiptScreen]
class ReceiptRoute extends _i36.PageRouteInfo<ReceiptRouteArgs> {
  ReceiptRoute({
    _i37.Key? key,
    required String referenceId,
    List<_i36.PageRouteInfo>? children,
  }) : super(
         ReceiptRoute.name,
         args: ReceiptRouteArgs(key: key, referenceId: referenceId),
         initialChildren: children,
       );

  static const String name = 'ReceiptRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReceiptRouteArgs>();
      return _i27.ReceiptScreen(key: args.key, referenceId: args.referenceId);
    },
  );
}

class ReceiptRouteArgs {
  const ReceiptRouteArgs({this.key, required this.referenceId});

  final _i37.Key? key;

  final String referenceId;

  @override
  String toString() {
    return 'ReceiptRouteArgs{key: $key, referenceId: $referenceId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReceiptRouteArgs) return false;
    return key == other.key && referenceId == other.referenceId;
  }

  @override
  int get hashCode => key.hashCode ^ referenceId.hashCode;
}

/// generated route for
/// [_i28.ReferralScreen]
class ReferralRoute extends _i36.PageRouteInfo<void> {
  const ReferralRoute({List<_i36.PageRouteInfo>? children})
    : super(ReferralRoute.name, initialChildren: children);

  static const String name = 'ReferralRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i28.ReferralScreen();
    },
  );
}

/// generated route for
/// [_i29.SettingsScreen]
class SettingsRoute extends _i36.PageRouteInfo<void> {
  const SettingsRoute({List<_i36.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i29.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i30.SetupDriverScreen]
class SetupDriverRoute extends _i36.PageRouteInfo<void> {
  const SetupDriverRoute({List<_i36.PageRouteInfo>? children})
    : super(SetupDriverRoute.name, initialChildren: children);

  static const String name = 'SetupDriverRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i30.SetupDriverScreen();
    },
  );
}

/// generated route for
/// [_i31.SetupPassengerScreen]
class SetupPassengerRoute extends _i36.PageRouteInfo<void> {
  const SetupPassengerRoute({List<_i36.PageRouteInfo>? children})
    : super(SetupPassengerRoute.name, initialChildren: children);

  static const String name = 'SetupPassengerRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i31.SetupPassengerScreen();
    },
  );
}

/// generated route for
/// [_i32.SignInScreen]
class SignInRoute extends _i36.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i37.Key? key, List<_i36.PageRouteInfo>? children})
    : super(
        SignInRoute.name,
        args: SignInRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'SignInRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignInRouteArgs>(
        orElse: () => const SignInRouteArgs(),
      );
      return _i32.SignInScreen(key: args.key);
    },
  );
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i37.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SignInRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i33.SupportScreen]
class SupportRoute extends _i36.PageRouteInfo<void> {
  const SupportRoute({List<_i36.PageRouteInfo>? children})
    : super(SupportRoute.name, initialChildren: children);

  static const String name = 'SupportRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i33.SupportScreen();
    },
  );
}

/// generated route for
/// [_i34.TransactionHistoryScreen]
class TransactionHistoryRoute extends _i36.PageRouteInfo<void> {
  const TransactionHistoryRoute({List<_i36.PageRouteInfo>? children})
    : super(TransactionHistoryRoute.name, initialChildren: children);

  static const String name = 'TransactionHistoryRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i34.TransactionHistoryScreen();
    },
  );
}

/// generated route for
/// [_i35.TransferScreen]
class TransferRoute extends _i36.PageRouteInfo<void> {
  const TransferRoute({List<_i36.PageRouteInfo>? children})
    : super(TransferRoute.name, initialChildren: children);

  static const String name = 'TransferRoute';

  static _i36.PageInfo page = _i36.PageInfo(
    name,
    builder: (data) {
      return const _i35.TransferScreen();
    },
  );
}
