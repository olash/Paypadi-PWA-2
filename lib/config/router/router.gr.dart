// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:paypadi/src/features/authentication/presentation/views/account_role.dart'
    as _i1;
import 'package:paypadi/src/features/authentication/presentation/views/create_account.dart'
    as _i2;
import 'package:paypadi/src/features/authentication/presentation/views/local_authentication.dart'
    as _i3;
import 'package:paypadi/src/features/authentication/presentation/views/login.dart'
    as _i4;
import 'package:paypadi/src/features/authentication/presentation/views/onboarding.dart'
    as _i5;
import 'package:paypadi/src/features/authentication/presentation/views/otp.dart'
    as _i6;
import 'package:paypadi/src/features/authentication/presentation/views/password.dart'
    as _i7;
import 'package:paypadi/src/features/authentication/presentation/views/setup_account.dart'
    as _i8;
import 'package:paypadi/src/features/authentication/presentation/views/transaction_pin.dart'
    as _i9;

/// generated route for
/// [_i1.AccountRoleScreen]
class AccountRoleRoute extends _i10.PageRouteInfo<void> {
  const AccountRoleRoute({List<_i10.PageRouteInfo>? children})
    : super(AccountRoleRoute.name, initialChildren: children);

  static const String name = 'AccountRoleRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountRoleScreen();
    },
  );
}

/// generated route for
/// [_i2.CreateAccountScreen]
class CreateAccountRoute extends _i10.PageRouteInfo<CreateAccountRouteArgs> {
  CreateAccountRoute({_i11.Key? key, List<_i10.PageRouteInfo>? children})
    : super(
        CreateAccountRoute.name,
        args: CreateAccountRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'CreateAccountRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateAccountRouteArgs>(
        orElse: () => const CreateAccountRouteArgs(),
      );
      return _i2.CreateAccountScreen(key: args.key);
    },
  );
}

class CreateAccountRouteArgs {
  const CreateAccountRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'CreateAccountRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.LocalAuthenticationScreen]
class LocalAuthenticationRoute extends _i10.PageRouteInfo<void> {
  const LocalAuthenticationRoute({List<_i10.PageRouteInfo>? children})
    : super(LocalAuthenticationRoute.name, initialChildren: children);

  static const String name = 'LocalAuthenticationRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.LocalAuthenticationScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.OnboardingScreen]
class OnboardingRoute extends _i10.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({_i11.Key? key, List<_i10.PageRouteInfo>? children})
    : super(
        OnboardingRoute.name,
        args: OnboardingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnboardingRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingRouteArgs>(
        orElse: () => const OnboardingRouteArgs(),
      );
      return _i5.OnboardingScreen(key: args.key);
    },
  );
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.OtpScreen]
class OtpRoute extends _i10.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({_i11.Key? key, List<_i10.PageRouteInfo>? children})
    : super(
        OtpRoute.name,
        args: OtpRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OtpRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OtpRouteArgs>(
        orElse: () => const OtpRouteArgs(),
      );
      return _i6.OtpScreen(key: args.key);
    },
  );
}

class OtpRouteArgs {
  const OtpRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.PasswordScreen]
class PasswordRoute extends _i10.PageRouteInfo<void> {
  const PasswordRoute({List<_i10.PageRouteInfo>? children})
    : super(PasswordRoute.name, initialChildren: children);

  static const String name = 'PasswordRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.PasswordScreen();
    },
  );
}

/// generated route for
/// [_i8.SetupAccountScreen]
class SetupAccountRoute extends _i10.PageRouteInfo<void> {
  const SetupAccountRoute({List<_i10.PageRouteInfo>? children})
    : super(SetupAccountRoute.name, initialChildren: children);

  static const String name = 'SetupAccountRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.SetupAccountScreen();
    },
  );
}

/// generated route for
/// [_i9.TransactionPinScreen]
class TransactionPinRoute extends _i10.PageRouteInfo<TransactionPinRouteArgs> {
  TransactionPinRoute({_i11.Key? key, List<_i10.PageRouteInfo>? children})
    : super(
        TransactionPinRoute.name,
        args: TransactionPinRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'TransactionPinRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransactionPinRouteArgs>(
        orElse: () => const TransactionPinRouteArgs(),
      );
      return _i9.TransactionPinScreen(key: args.key);
    },
  );
}

class TransactionPinRouteArgs {
  const TransactionPinRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'TransactionPinRouteArgs{key: $key}';
  }
}
