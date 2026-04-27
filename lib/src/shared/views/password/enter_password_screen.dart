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
class EnterPasswordScreen extends HookConsumerWidget {
  const EnterPasswordScreen({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordController = useTextEditingController();

    ref.listen(authenticationControllerProvider, (previous, current) {
      current.when(
        data: (d) {
          ref.dismissLoading();
          passwordController.clear();
        },
        error: (e, st) {
          ref.dismissLoading();
          passwordController.clear();
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
            pinLength: passwordPinLength,
            controller: passwordController,
          ),
          Spacer(flex: 3),
          AppKeypad(
            keyLength: passwordPinLength,
            controller: passwordController,
            onSubmit: (value) => onSubmit(ref, value),
          ),
          Spacer(),
        ],
      ),
    );
  }

  void onSubmit(WidgetRef ref, String password) {
    ref
        .read(authenticationControllerProvider.notifier)
        .login(phoneNumber, password);
  }
}
