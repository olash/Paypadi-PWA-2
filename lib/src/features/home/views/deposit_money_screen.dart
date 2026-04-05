import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/bank_account_model/bank_account_model.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/home/controller/bank_account_controller.dart';
import 'package:paypadi/src/shared/widgets/app_card.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class DepositMoneyScreen extends HookConsumerWidget {
  const DepositMoneyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final depositAccount = ref.watch(bankAccountControllerProvider);

    return AppScaffold(
      title: "Add money",
      child: Padding(
        padding: EdgeInsets.only(top: Values.v32),
        child: AppCard(
          padding: EdgeInsets.all(Values.v16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bank",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: kZeroLetterSpacing,
                  color: AppColors.walletCardTextColor,
                ),
              ),
              Skeletonizer(
                enabled: depositAccount.isLoading,
                child: Text(
                  depositAccount.value?.name ?? "John Doe",
                  style: context.textTheme.bodyLarge?.copyWith(
                    letterSpacing: kZeroLetterSpacing,
                  ),
                ),
              ),

              Values.v16.verticalSpacing,
              Text(
                "Account Number",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: kZeroLetterSpacing,
                  color: AppColors.walletCardTextColor,
                ),
              ),
              Skeletonizer(
                enabled: depositAccount.isLoading,
                child: Text(
                  depositAccount.value?.number ?? "123456789",
                  style: context.textTheme.bodyLarge?.copyWith(
                    letterSpacing: kZeroLetterSpacing,
                  ),
                ),
              ),
              Values.v12.verticalSpacing,
              Row(
                spacing: Values.v12,
                children: [
                  FilledButton(
                    onPressed: depositAccount.value == null
                        ? null
                        : () => copyAccountToClipBoard(depositAccount.value!),
                    style: context.filledButtonTheme.style?.copyWith(
                      fixedSize: WidgetStatePropertyAll(kButtonMediumSize),
                      foregroundColor: WidgetStatePropertyAll(
                        ref.watch(appPrimaryColorProvider),
                      ),
                      backgroundColor: WidgetStatePropertyAll(
                        ref.watch(appPrimaryColorProvider).withAlpha(20),
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          side: BorderSide(
                            color: ref.watch(appPrimaryColorProvider),
                          ),
                          borderRadius: BorderRadiusGeometry.circular(
                            Values.v12,
                          ),
                        ),
                      ),
                      textStyle: WidgetStatePropertyAll(
                        context.textTheme.bodyMedium?.copyWith(
                          letterSpacing: -0.08,
                          color: ref.watch(appPrimaryColorProvider),
                        ),
                      ),
                    ),
                    child: Text("Copy"),
                  ),
                  Flexible(
                    child: FilledButton(
                      onPressed: depositAccount.value == null
                          ? null
                          : () =>
                                shareAccountInformation(depositAccount.value!),
                      style: context.filledButtonTheme.style?.copyWith(
                        fixedSize: WidgetStatePropertyAll(kButtonMediumSize),
                      ),
                      child: Text("Share"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void copyAccountToClipBoard(BankAccountModel account) async {
    final String depositAccountInfo =
        "Bank: ${account.name} \n"
        "Account Number: ${account.number}";

    await Clipboard.setData(ClipboardData(text: depositAccountInfo)).then(
      (value) => showSuccessDialog(message: "Successfully copied information"),
    );
  }

  void shareAccountInformation(BankAccountModel account) async {
    final String depositAccountInfo =
        "Bank: ${account.name} \n"
        "Account Number: ${account.number}";

    await SharePlus.instance.share(
      ShareParams(text: depositAccountInfo),
    );
  }
}
