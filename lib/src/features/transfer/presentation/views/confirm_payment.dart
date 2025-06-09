import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ConfirmPaymentScreen extends HookConsumerWidget {
  const ConfirmPaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      title: "Withdrawal",
      child: Column(
        children: [
          24.0.verticalSpacing,

          FilledButton(
            onPressed: () {
              context.router.push(ReceiptRoute());
            },
            child: Text("Make Payment"),
          ),
        ],
      ),
    );
  }
}
