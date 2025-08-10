import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart'
    show CacheKeys, logger, transactionPinLength;
import 'package:paypadi/core/services/service_registry.dart'
    show secureCacheProvider, appRouterProvider;
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
            pinLength: transactionPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            pinLength: transactionPinLength,
            onChanged: (value) {
              transactionPin.value = value;
              logger.debug(transactionPin.value);
            },
            onSubmit:
                (value) => ref
                    .read(appRouterProvider)
                    .push(ConfirmTransactionPinRoute(transactionPin: value)),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

@RoutePage()
class ConfirmTransactionPinScreen extends HookConsumerWidget {
  const ConfirmTransactionPinScreen({super.key, required this.transactionPin});
  final String transactionPin;

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
            pinLength: transactionPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            pinLength: transactionPinLength,
            onChanged: (value) {
              confirmTransactionPin.value = value;
              logger.debug(confirmTransactionPin.value);
            },
            onSubmit: (value) async {
              if (value == transactionPin) {
                await ref
                    .read(secureCacheProvider)
                    .write(key: CacheKeys.transactionPin, value: value);
                ref.read(appRouterProvider).push(LocalAuthenticationRoute());
              }
            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}
