import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/shared/controllers/profile_controller.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/loading_indicator.dart';

@RoutePage()
class TransactionPinScreen extends HookConsumerWidget {
  const TransactionPinScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionPin = useState<String>('');

    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v32.verticalSpacing,
          Text(
            "Create a Transaction PIN",
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
            text: transactionPin.value,
            pinLength: transactionPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            keyLength: transactionPinLength,
            onSubmit: (pin) => onSubmit(ref, pin),
            onChanged: (value) => transactionPin.value = value,
          ),
          Spacer(),
        ],
      ),
    );
  }

  void onSubmit(WidgetRef ref, String pin) {
    ref.read(appRouterProvider).push(ConfirmTransactionPinRoute(pin: pin));
  }
}

@RoutePage()
class ConfirmTransactionPinScreen extends HookConsumerWidget {
  const ConfirmTransactionPinScreen({super.key, required this.pin});
  final String pin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confirmTransactionPin = useState<String>('');

    ref.listen(profileControllerProvider, (_, state) {
      state.when(
        data: (d) {
          dismissLoadingOverlay(context);
        },
        error: (e, st) {
          dismissLoadingOverlay(context);
          showErrorDialog(message: e.toString());
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
            text: confirmTransactionPin.value,
         pinLength: transactionPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            keyLength: transactionPinLength,
            onChanged: (value) => confirmTransactionPin.value = value,
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
