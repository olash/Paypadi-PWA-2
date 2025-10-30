import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/services/service_registry.dart'
    show appRouterProvider, secureCacheProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ChangePinScreen extends HookConsumerWidget {
  const ChangePinScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pin = useState<String>('');
    return AppScaffold(
      title: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Verify Payment PIN",
            style: context.textTheme.headlineMedium,
          ),
          Values.v12.verticalSpacing,
          Text(
            "Please enter your Password",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Values.v32.verticalSpacing,
          AppPinIndicator(
            text: pin.value,
            pinLength: transactionPinLength,
          ),
          Spacer(flex: 3),
          AppKeypad(
            pinLength: transactionPinLength,
            onChanged: (value) {
              pin.value = value;
              logger.debug(pin.value);
            },
            onSubmit: (currentPin) => _changePinRouteOnSubmit(ref, currentPin),
          ),
          Spacer(),
        ],
      ),
    );
  }

  void _changePinRouteOnSubmit(WidgetRef ref, String currentPin) {
    ref
        .read(appRouterProvider)
        .push(
          TransactionPinRoute(
            onSubmit: (newPin) => _transactionPinRouteOnSubmit(ref, newPin),
          ),
        );
  }

  void _transactionPinRouteOnSubmit(WidgetRef ref, String pin) {
    ref
        .read(appRouterProvider)
        .push(
          ConfirmTransactionPinRoute(
            onSubmit:
                (confirmTransactionPin) => _confirmTransactionPinRouteOnSubmit(
                  ref,
                  pin,
                  confirmTransactionPin,
                ),
          ),
        );
  }

  void _confirmTransactionPinRouteOnSubmit(
    WidgetRef ref,
    String pin,
    String confirmedPin,
  ) {
    if (pin == confirmedPin) {
      ref
          .read(secureCacheProvider)
          .write(key: CacheKeys.transactionPin, value: confirmedPin);
      ref
          .read(appRouterProvider)
          .popUntilRouteWithName(AppBottomNavBarRoute.name);
    }
  }
}
