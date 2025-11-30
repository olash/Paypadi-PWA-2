import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/utils/constants.dart'
    show Values, diLocator, passwordPinLength;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/authentication_controller.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/loading_indicator.dart';

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
          Values.v12.verticalSpacing,
          Text(
            "Set a secure password for your account",
            style: context.textTheme.bodyLarge?.copyWith(
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
            onChanged: (value) => password.value = value,
          ),
          Spacer(),
        ],
      ),
    );
  }

  void onSubmit(WidgetRef ref, String password) {
    ref.read(appRouterProvider).push(ConfirmPasswordRoute(password: password));
  }
}

@RoutePage()
class ConfirmPasswordScreen extends HookConsumerWidget {
  const ConfirmPasswordScreen({super.key, required this.password});
  final String password;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confirmPassword = useState<String>('');

    ref.listen(authControllerProvider, (previous, current) {
      current.when(
        data: (d) {
          dismissLoadingOverlay(context);
          confirmPassword.value = "";
        },
        error: (e, st) {
          dismissLoadingOverlay(context);
          showErrorDialog(message: e.toString());
          confirmPassword.value = "";
        },
        loading: () => showLoadingOverlay(context, ref),
      );
    });

    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v32.verticalSpacing,
          Text(
            "Confirm your Password",
            style: context.textTheme.headlineMedium,
          ),
          Values.v12.verticalSpacing,
          Text(
            "Set a secure password for your account",
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Values.v32.verticalSpacing,
          AppPinIndicator(
            text: confirmPassword.value,
            pinLength: passwordPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            pinLength: passwordPinLength,
            onSubmit: (confirmedPassword) {
              if (password == confirmedPassword) {
                diLocator.get<RegisterPayloadBuilder>().setPassword(
                  confirmedPassword,
                );
                ref.read(authControllerProvider.notifier).createAccount();
              }
            },
            onChanged: (value) => confirmPassword.value = value,
          ),
          Spacer(),
        ],
      ),
    );
  }
}

@RoutePage()
class EnterPasswordScreen extends HookConsumerWidget {
  const EnterPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = useState<String>('');

    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v32.verticalSpacing,
          Text(
            "Enter Password",
            style: context.textTheme.headlineMedium,
          ),
          Values.v12.verticalSpacing,
          Text(
            "Enter the password associated with your account",
            style: context.textTheme.bodyLarge?.copyWith(
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
            onChanged: (value) => password.value = value,
          ),
          Spacer(),
        ],
      ),
    );
  }

  void onSubmit(WidgetRef ref, String password) {
    ref.read(appRouterProvider).push(ConfirmPasswordRoute(password: password));
  }
}
