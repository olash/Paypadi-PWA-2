import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/core/utils/constants.dart'
    show logger, passwordPinLength, Values, CacheKeys;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class PasswordScreen extends HookConsumerWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = useState<String>('');

    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v32.verticalSpacing,
          Text(
            "Create your Password",
            style: context.textTheme.headlineMedium,
          ),
          Values.v16.verticalSpacing,
          Text(
            "Set a secure password for your account",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Values.v32.verticalSpacing,
          AppPinIndicator(
            text: password.value,
            pinLength: passwordPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            pinLength: passwordPinLength,
            onSubmit: (value) => onSubmit(ref, value),
            onChanged: (value) {
              password.value = value;
            },
          ),
          Spacer(),
        ],
      ),
    );
  }

  void onSubmit(WidgetRef ref, String password) {
    ref
        .read(appRouterProvider)
        .push(
          ConfirmPasswordRoute(
            onSubmit: (confirmPassword) => _confirmPasswordRouteOnSubmit(
              ref,
              password,
              confirmPassword,
            ),
          ),
        );
  }

  void _confirmPasswordRouteOnSubmit(
    WidgetRef ref,
    String password,
    String confirmPassword,
  ) {
    if (password == confirmPassword) {
      ref
          .read(secureCacheProvider)
          .write(key: CacheKeys.loginPin, value: confirmPassword);
      ref
          .read(appRouterProvider)
          .push(
            TransactionPinRoute(
              onSubmit: (transactionPin) =>
                  _transactionPinRouteOnSubmit(ref, transactionPin),
            ),
          );
    }
  }

  void _transactionPinRouteOnSubmit(WidgetRef ref, String pin) {
    ref
        .read(appRouterProvider)
        .push(
          ConfirmTransactionPinRoute(
            onSubmit: (confirmTransactionPin) =>
                _confirmTransactionPinRouteOnSubmit(
                  ref,
                  pin,
                  confirmTransactionPin,
                ),
          ),
        );
  }

  void _confirmTransactionPinRouteOnSubmit(
    WidgetRef ref,
    String pin,
    String confirmedPin,
  ) {
    if (pin == confirmedPin) {
      ref
          .read(secureCacheProvider)
          .write(key: CacheKeys.transactionPin, value: confirmedPin);
      ref.read(appRouterProvider).push(BiometricAuthenticationRoute());
    }
  }
}

@RoutePage()
class ConfirmPasswordScreen extends HookConsumerWidget {
  const ConfirmPasswordScreen({super.key, this.onSubmit});
  final ValueSetter<String>? onSubmit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confirmPassword = useState<String>('');

    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v32.verticalSpacing,
          Text(
            "Confirm your Password",
            style: context.textTheme.headlineMedium,
          ),
          16.0.verticalSpacing,
          Text(
            "Set a secure password for your account",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          32.0.verticalSpacing,
          AppPinIndicator(
            text: confirmPassword.value,
            pinLength: passwordPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            pinLength: passwordPinLength,
            onSubmit: onSubmit,
            onChanged: (value) {
              confirmPassword.value = value;
              logger.debug(confirmPassword.value);
            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}
