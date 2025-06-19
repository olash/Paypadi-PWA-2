import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
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
          16.0.verticalSpacing,
          Container(
            padding: EdgeInsets.fromLTRB(24, 32, 24, 48),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                Text(
                  "Payment Summary!",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    letterSpacing: kZeroLetterSpacing,
                  ),
                ),
                8.0.verticalSpacing,
                Text(
                  "₦1,000,000",
                  style: context.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: kZeroLetterSpacing,
                  ),
                ),
                32.0.verticalSpacing,
                Divider(
                  indent: 8,
                  endIndent: 8,
                  color: AppColors.dividerColor,
                ),
                32.0.verticalSpacing,
                _SummaryDetail(detail: "Ref Number", value: "enfioejnfowse"),
                _SummaryDetail(detail: "Payment time", value: "enfioejnfowse"),
                _SummaryDetail(detail: "Payment", value: "enfioejnfowse"),
                _SummaryDetail(detail: "Amount", value: "enfioejnfowse"),
                _SummaryDetail(detail: "Transaction Fee", value: "enfioejnfowse"),
              ],
            ),
          ),
          Spacer(flex: 3),
          FilledButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(50),
                ),
              ),
            ),
            onPressed: () {
              context.router.push(ReceiptRoute());
            },
            child: Text("Make Payment"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class _SummaryDetail extends StatelessWidget {
  const _SummaryDetail({required this.detail, required this.value});

  final String detail;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Text(
            detail,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w400,
              letterSpacing: kZeroLetterSpacing,
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: context.textTheme.bodySmall?.copyWith(
                letterSpacing: kZeroLetterSpacing,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
