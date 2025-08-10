import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/services/service_registry.dart'
    show appRouterProvider;
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
          useSpaceOf12.verticalSpacing,
          Text(
            "Please enter your Password",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          useSpaceOf32.verticalSpacing,
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
            onSubmit:
                (value) =>
                    ref.read(appRouterProvider).push(TransactionPinRoute()),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
