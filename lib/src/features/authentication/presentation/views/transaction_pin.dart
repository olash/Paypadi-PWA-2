import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

final int _transactionPinLength = 4;

@RoutePage()
class TransactionPinScreen extends HookConsumerWidget {
  const TransactionPinScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionPin = useState<String>('');

    return AppScaffold(
      title: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          24.0.verticalSpacing,
          Text(
            "Create a Transaction PIN",
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
            text: transactionPin.value,
            pinLength: _transactionPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            pinLength: _transactionPinLength,
            onChanged: (value) {
              transactionPin.value = value;
              transactionPin.debugLog();
            },
            onSubmit: (value) {
              context.router.push(ConfirmTransactionPinRoute());
            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}

@RoutePage()
class ConfirmTransactionPinScreen extends HookConsumerWidget {
  const ConfirmTransactionPinScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confirmTransactionPin = useState<String>('');

    return AppScaffold(
      title: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          24.0.verticalSpacing,
          Text(
            "Confirm Transaction Pin",
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
            text: confirmTransactionPin.value,
            pinLength: _transactionPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            pinLength: _transactionPinLength,
            onChanged: (value) {
              confirmTransactionPin.value = value;
              confirmTransactionPin.debugLog();
            },
            onSubmit: (value) {
              context.router.push(LocalAuthenticationRoute());
            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}
