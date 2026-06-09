import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/authentication_controller.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ConfirmPasswordScreen extends HookConsumerWidget {
  const ConfirmPasswordScreen({required this.password, super.key});
  final String password;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confirmPasswordController = useTextEditingController();

    ref.listen(authenticationControllerProvider, (previous, current) {
      current.when(
        data: (d) {
          confirmPasswordController.clear();
          ref.dismissLoading();
        },
        error: (e, st) {
          confirmPasswordController.clear();
          ref.dismissLoading();
          ref.showExceptionMessage(e, st);
        },
        loading: () => ref.showLoading(),
      );
    });

    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v32.verticalSpacing,
          Text(
            'Confirm your Password',
            style: context.textTheme.headlineMedium,
          ),
          Values.v12.verticalSpacing,
          Text(
            'Set a secure password for your account',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Values.v32.verticalSpacing,
          AppPinIndicator(
            pinLength: passwordPinLength,
            controller: confirmPasswordController,
          ),
          const Spacer(flex: 3),
          AppKeypad(
            keyLength: passwordPinLength,
            controller: confirmPasswordController,
            onSubmit: (confirmedPassword) =>
                createAccount(ref, password, confirmedPassword),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  void createAccount(
    WidgetRef ref,
    String password,
    String confirmedPassword,
  ) {
    if (password == confirmedPassword) {
      ref.read(authenticationPayloadProvider)['password'] = password;
      ref.read(authenticationControllerProvider.notifier).createAccount();
    }
  }
}
