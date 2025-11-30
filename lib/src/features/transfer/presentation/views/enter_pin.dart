import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart'
    show appRouterProvider, biometricsProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class EnterPinScreen extends HookConsumerWidget {
  const EnterPinScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final password = useState<String>("");
    final biometricService = ref.watch(biometricsProvider);

    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          25.0.verticalSpacing,
          Text(
            "Enter PIN",
            style: context.textTheme.headlineMedium,
          ),
          12.0.verticalSpacing,
          Text(
            "Enter transaction 4-digit PIN-code or use your biometrics to perform action.",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          32.0.verticalSpacing,
          AppPinIndicator(
            text: password.value,
            pinLength: transactionPinLength,
          ),
          Spacer(),
          AppKeypad(
            showBiometric: true,
            pinLength: transactionPinLength,
            padding: EdgeInsets.symmetric(horizontal: 24),
            onBiometricKeyPressed: () async {
              await biometricService.authenticate();
            },
            onChanged: (value) {
              password.value = value;
            },
            onSubmit: (value) =>
                ref.read(appRouterProvider).push(ConfirmPaymentRoute()),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
