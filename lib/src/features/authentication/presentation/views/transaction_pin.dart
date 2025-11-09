import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/service_registry/service_registry.dart';
import 'package:paypadi/core/utils/constants.dart'
    show transactionPinLength, Values, CacheKeys;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

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
            pinLength: transactionPinLength,
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
            pinLength: transactionPinLength,
            onChanged: (value) => confirmTransactionPin.value = value,
            onSubmit: (confirmedPin) {
              if (pin == confirmedPin) {
                ref
                    .read(secureCacheProvider)
                    .write(key: CacheKeys.transactionPin, value: confirmedPin);
                ref
                    .read(appRouterProvider)
                    .push(BiometricAuthenticationRoute());
              }
            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}
