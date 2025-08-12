import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class MakePaymentScreen extends HookConsumerWidget {
  const MakePaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasSavedAsBeneficiary = useState<bool>(false);
    final TextEditingController comments = useTextEditingController();

    return AppScaffold(
      title: "Transfer",
      child: Column(
        children: [
          32.0.verticalSpacing,
          _BankAccountInformation(
            bankImageUrl: kDemoProfilePic,
            accountName: "Dantanna Aguerro",
            accountNumber: "1287319231",
          ),
          16.0.verticalSpacing,
          AppTextformfield(
            title: "Comments",
            hint: "Enter a narration",
            controller: comments,
            titleStyle: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w400,
              letterSpacing: kZeroLetterSpacing,
            ),
          ),
          20.0.verticalSpacing,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  "Save as Beneficiary",
                  style: context.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Switch.adaptive(
                value: hasSavedAsBeneficiary.value,
                onChanged: (value) {
                  hasSavedAsBeneficiary.value = value;
                },
              ),
            ],
          ),

          20.0.verticalSpacing,
          FilledButton(
            onPressed: () {
              context.router.push(EnterPinRoute());
            },
            child: Text("Make Payment"),
          ),
        ],
      ),
    );
  }
}

class _BankAccountInformation extends ConsumerWidget {
  const _BankAccountInformation({
    required this.bankImageUrl,
    required this.accountName,
    required this.accountNumber,
  });

  final String bankImageUrl;
  final String accountName;
  final String accountNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: useSpaceOf12,
        vertical: useSpaceOf10,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bankBorderColor),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        spacing: 20,
        children: [
          Container(
            width: 64.sW,
            height: 64.sH,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28.r),
              image: DecorationImage(
                image: NetworkImage(bankImageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  accountName,
                  style: context.textTheme.bodyLarge,
                ),
                Text(
                  accountNumber,
                  style: context.textTheme.bodySmall?.copyWith(
                    letterSpacing: kZeroLetterSpacing,
                    color: AppColors.bankAccountNumberTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
