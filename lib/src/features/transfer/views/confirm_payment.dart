import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/transfer/controller/transaction_controller.dart';
import 'package:paypadi/src/features/transfer/views/receipt_screen.dart';
import 'package:paypadi/src/features/transfer/widgets/dotted_line.dart';
import 'package:paypadi/src/features/transfer/widgets/payment_details.dart';
import 'package:paypadi/src/features/transfer/widgets/receipt_card.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/loading_indicator.dart';

@RoutePage()
class ConfirmPaymentScreen extends HookConsumerWidget {
  const ConfirmPaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentSummary = ref
        .watch(transactionControllerProvider.notifier)
        .payloadBuilder;

    ref.listen(transactionControllerProvider, (_, state) {
      state.when(
        data: (d) {
          dismissLoadingOverlay(context);
          // ref.read(appRouterProvider).push(ReceiptScreen(referenceId: ,));
        },
        error: (e, st) {
          dismissLoadingOverlay(context);
          showErrorDialog(message: e.toString());
        },
        loading: () => showLoadingOverlay(context, ref),
      );
    });

    return AppScaffold(
      title: "Withdrawal",
      bgColor: AppColors.scaffoldBackground,
      child: Column(
        children: [
          Values.v16.verticalSpacing,
          ReceiptCard(
            child: Column(
              children: [
                Text(
                  "Payment Summary!",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    letterSpacing: kZeroLetterSpacing,
                  ),
                ),
                Values.v8.verticalSpacing,
                Text(
                  "₦ ${formatAmount(paymentSummary["amount"])}",
                  style: context.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: kZeroLetterSpacing,
                  ),
                ),
                Values.v32.verticalSpacing,
                Divider(
                  indent: Values.v8,
                  endIndent: 8,
                  color: AppColors.dividerColor,
                ),
                Values.v32.verticalSpacing,
                // PaymentDetails(detail: "Ref Number", value: "enfioejnfowse"),
                // PaymentDetails(detail: "Payment time", value: "enfioejnfowse"),
                PaymentDetails(detail: "Payment", value: "enfioejnfowse"),
                DottedDivider(topPadding: Values.v2),
                PaymentDetails(detail: "Amount", value: "enfioejnfowse"),
                PaymentDetails(
                  detail: "Transaction Fee",
                  value: "enfioejnfowse",
                ),
              ],
            ),
          ),
          Spacer(flex: 4),
          FilledButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(50),
                ),
              ),
            ),
            onPressed: () {
              ref.read(transactionControllerProvider.notifier).transfer();
       
            },
            child: Text("Make Payment"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
