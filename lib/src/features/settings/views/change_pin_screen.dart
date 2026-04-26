import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ChangePinScreen extends HookConsumerWidget {
  const ChangePinScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pinController = useTextEditingController();

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
            pinLength: transactionPinLength,
            controller: pinController,
          ),
          Spacer(flex: 3),
          AppKeypad(
            keyLength: transactionPinLength,
            controller: pinController,
            onSubmit: (currentPin) {},
          ),
          Spacer(),
        ],
      ),
    );
  }
}
