import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class TransactionPinScreen extends HookConsumerWidget {
  TransactionPinScreen({super.key});

  final TapGestureRecognizer resendCode = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController pin = useTextEditingController();
    final TextEditingController confirmPin = useTextEditingController();

    return AppScaffold(
      appBarTitle: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text("Create a Transaction PIN", style: context.textTheme.headlineMedium),
          16.0.verticalSpacing,
          Text(
            "Set a secure password for your account",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          32.0.verticalSpacing,

          //! Pin Indicator
          AppKeypad(),
        ],
      ),
    );
  }
}
