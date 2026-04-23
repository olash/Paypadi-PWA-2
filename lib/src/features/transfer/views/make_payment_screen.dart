import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/account_lookup_model/account_lookup_model.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/home/controller/wallet_controller.dart';
import 'package:paypadi/src/features/transfer/controller/transaction_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';
import 'package:skeletonizer/skeletonizer.dart';

@RoutePage()
class MakePaymentScreen extends HookConsumerWidget {
  const MakePaymentScreen({super.key, required this.recipientNumber});
  final String recipientNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasSavedAsBeneficiary = useState<bool>(false);

    final commentController = useTextEditingController();

    final receipientDetails = ref.watch(
      accountLookupControllerProvider(recipientNumber),
    );

    return AppScaffold(
      title: "Transfer",
      child: Column(
        children: [
          Values.v16.verticalSpacing,
          _BankAccountInformation(receipientNumber: recipientNumber),
          Values.v32.verticalSpacing,
          AppTextformfield(
            title: "Comments",
            hint: "Enter a narration",
            controller: commentController,
            titleStyle: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w400,
              letterSpacing: kZeroLetterSpacing,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: Values.v14),
                child: Text(
                  "Save as Beneficiary",
                  style: context.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Switch.adaptive(
                value: hasSavedAsBeneficiary.value,
                onChanged: receipientDetails.isLoading
                    ? null
                    : (value) {
                        hasSavedAsBeneficiary.value = true;
                        ref
                            .read(walletControllerProvider.notifier)
                            .saveBeneficiary(receipientDetails.value!);
                      },
              ),
            ],
          ),
          Values.v48.verticalSpacing,
          FilledButton(
            onPressed: receipientDetails.value == null
                ? null
                : () => continueToPinPage(
                    ref,
                    commentController.text,
                    receipientDetails.value!,
                  ),
            child: Text("Make Payment"),
          ),
        ],
      ),
    );
  }

  void continueToPinPage(
    WidgetRef ref,
    String desc,
    AccountLookupModel recipient,
  ) {
    Map<String, dynamic> payload = ref
        .read(transactionControllerProvider.notifier)
        .payloadBuilder;

    payload["description"] = desc;
    payload["recipient_account_number"] = recipient.accountNumber;
    payload["recipient_bank_code"] = recipient.bankCode;

    ref.read(appRouterProvider).push(EnterPinRoute());
  }
}

class _BankAccountInformation extends ConsumerWidget {
  const _BankAccountInformation({required this.receipientNumber});
  final String receipientNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final receipientDetails = ref.read(
      accountLookupControllerProvider(receipientNumber),
    );

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Values.v12,
        vertical: Values.v10,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bankBorderColor),
        borderRadius: BorderRadius.circular(Values.v48),
      ),
      child: Row(
        spacing: Values.v20,
        children: [
          Skeletonizer(
            enabled: receipientDetails.isLoading,
            child: Container(
              width: Values.v64,
              height: Values.v64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Values.v24),
                image: DecorationImage(
                  image: NetworkImage(
                    receipientDetails.value?.profilePicUrl ?? kDemoProfilePic,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skeletonizer(
                  enabled: receipientDetails.isLoading,
                  child: Text(
                    "${receipientDetails.value?.firstName ?? "FirstName"} "
                    "${receipientDetails.value?.lastName ?? "LastName"}",
                    style: context.textTheme.titleLarge,
                  ),
                ),
                Skeletonizer(
                  enabled: receipientDetails.isLoading,
                  child: Text(
                    "${receipientDetails.value?.accountNumber ?? "AccountNumber"} ",
                    style: context.textTheme.titleSmall?.copyWith(
                      letterSpacing: kZeroLetterSpacing,
                      color: AppColors.grey600,
                    ),
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
