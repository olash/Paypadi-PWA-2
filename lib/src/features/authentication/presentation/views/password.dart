import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart'
    show CacheKeys, logger, passwordPinLength, useSpaceOf16, useSpaceOf32;
import 'package:paypadi/core/services/service_registry.dart'
    show appRouterProvider, secureCacheProvider;
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
      title: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          24.0.verticalSpacing,
          Text(
            "Create your Password",
            style: context.textTheme.headlineMedium,
          ),
       useSpaceOf16.verticalSpacing,
          Text(
            "Set a secure password for your account",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
         useSpaceOf32.verticalSpacing,
          AppPinIndicator(
            text: password.value,
            pinLength: passwordPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            pinLength: passwordPinLength,
            onChanged: (value) {
              password.value = value;
              logger.debug(password.value);
            },
            onSubmit:
                (value) => ref
                    .read(appRouterProvider)
                    .push(ConfirmPasswordRoute(passwordPin: value)),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

@RoutePage()
class ConfirmPasswordScreen extends HookConsumerWidget {
  const ConfirmPasswordScreen({super.key, required this.passwordPin});
  final String passwordPin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confirmPassword = useState<String>('');
    return AppScaffold(
      title: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          24.0.verticalSpacing,
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
            onChanged: (value) {
              confirmPassword.value = value;
              logger.debug(confirmPassword.value);
            },
            onSubmit: (value) async {
              if (value == passwordPin) {
                await ref
                    .read(secureCacheProvider)
                    .write(key: CacheKeys.loginPin, value: value);
                ref.read(appRouterProvider).push(TransactionPinRoute());
              }
            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}
