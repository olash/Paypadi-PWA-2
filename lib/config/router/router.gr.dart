// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:paypadi/src/features/authentication/presentation/views/account_role.dart'
    as _i1;
import 'package:paypadi/src/features/authentication/presentation/views/create_account.dart'
    as _i2;
import 'package:paypadi/src/features/authentication/presentation/views/login.dart'
    as _i3;
import 'package:paypadi/src/features/authentication/presentation/views/onboarding.dart'
    as _i4;
import 'package:paypadi/src/features/authentication/presentation/views/otp.dart'
    as _i5;
import 'package:paypadi/src/features/authentication/presentation/views/setup_account.dart'
    as _i6;

/// generated route for
/// [_i1.AccountRoleScreen]
class AccountRoleRoute extends _i7.PageRouteInfo<void> {
  const AccountRoleRoute({List<_i7.PageRouteInfo>? children})
    : super(AccountRoleRoute.name, initialChildren: children);

  static const String name = 'AccountRoleRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountRoleScreen();
    },
  );
}

/// generated route for
/// [_i2.CreateAccountScreen]
class CreateAccountRoute extends _i7.PageRouteInfo<void> {
  const CreateAccountRoute({List<_i7.PageRouteInfo>? children})
    : super(CreateAccountRoute.name, initialChildren: children);

  static const String name = 'CreateAccountRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return _i2.CreateAccountScreen();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginScreen();
    },
  );
}

/// generated route for
/// [_i4.OnboardingScreen]
class OnboardingRoute extends _i7.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({_i8.Key? key, List<_i7.PageRouteInfo>? children})
    : super(
        OnboardingRoute.name,
        args: OnboardingRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'OnboardingRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingRouteArgs>(
        orElse: () => const OnboardingRouteArgs(),
      );
      return _i4.OnboardingScreen(key: args.key);
    },
  );
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.OtpScreen]
class OtpRoute extends _i7.PageRouteInfo<void> {
  const OtpRoute({List<_i7.PageRouteInfo>? children})
    : super(OtpRoute.name, initialChildren: children);

  static const String name = 'OtpRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return _i5.OtpScreen();
    },
  );
}

/// generated route for
/// [_i6.SetupAccountScreen]
class SetupAccountRoute extends _i7.PageRouteInfo<void> {
  const SetupAccountRoute({List<_i7.PageRouteInfo>? children})
    : super(SetupAccountRoute.name, initialChildren: children);

  static const String name = 'SetupAccountRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.SetupAccountScreen();
    },
  );
}
