import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/controllers/profile_controller.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ConfirmTransactionPinScreen extends HookConsumerWidget {
  const ConfirmTransactionPinScreen({super.key, required this.pin});
  final String pin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confirmPinController = useTextEditingController();

    ref.listen(profileControllerProvider, (previous, current) {
      current.when(
        data: (d) {
          ref.dismissLoading();
        },
        error: (e, st) {
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
            "Confirm Transaction Pin",
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
            pinLength: transactionPinLength,
            controller: confirmPinController,
          ),
          Spacer(flex: 3),
          AppKeypad(
            keyLength: transactionPinLength,
            controller: confirmPinController,
            onSubmit: (confirmedPin) => submitPin(ref, pin, confirmedPin),
          ),
          Spacer(),
        ],
      ),
    );
  }

  void submitPin(WidgetRef ref, String pin, String confirmedPin) {
    if (pin == confirmedPin) {
      ref
          .read(profileControllerProvider.notifier)
          .setTransactionPin(pin, confirmedPin);
    }
  }
}
