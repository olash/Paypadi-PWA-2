import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/config/provider_registry/service_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/transfer/presentation/widgets/dotted_line.dart';
import 'package:paypadi/src/features/transfer/presentation/widgets/payment_details.dart';
import 'package:paypadi/src/features/transfer/presentation/widgets/receipt_card.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ConfirmPaymentScreen extends HookConsumerWidget {
  const ConfirmPaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  "₦1,000,000",
                  style: context.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: kZeroLetterSpacing,
                  ),
                ),
                Values.v32.verticalSpacing,
                Divider(
                  indent: 8,
                  endIndent: 8,
                  color: AppColors.dividerColor,
                ),
                32.0.verticalSpacing,
                PaymentDetails(detail: "Ref Number", value: "enfioejnfowse"),
                PaymentDetails(detail: "Payment time", value: "enfioejnfowse"),
                PaymentDetails(detail: "Payment", value: "enfioejnfowse"),
                DottedDivider(topPadding: 2),
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
              ref.read(appRouterProvider).push(ReceiptRoute());
            },
            child: Text("Make Payment"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
