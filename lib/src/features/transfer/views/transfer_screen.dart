import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/src/shared/widgets/app_zero_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/transfer/controller/beneficiaries_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class TransferScreen extends HookConsumerWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final receipientAccountNumber = useTextEditingController();

    return AppScaffold(
      title: "Transfer",
      child: SingleChildScrollView(
        child: Column(
          children: [
            Values.v32.verticalSpacing,
            AppTextformfield(
              title: "Account Number",
              hint: "Enter 10-digit Account number or Phone Number",
              controller: receipientAccountNumber,
              keyboardType: TextInputType.number,
            ),
            Values.v32.verticalSpacing,
            FilledButton(
              onPressed: () =>
                  continueAction(ref, receipientAccountNumber.text),
              child: Text("Continue"),
            ),
            Values.v32.verticalSpacing,
            _BeneficiariesList(),
          ],
        ),
      ),
    );
  }

  void continueAction(WidgetRef ref, String receipientNumber) {
    ref
        .read(appRouterProvider)
        .push(MakePaymentRoute(recipientNumber: receipientNumber));
  }
}

class _BeneficiariesList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beneficiaryType = ref.watch(beneficiaryTypeControllerProvider);

    final beneficiaries = switch (beneficiaryType) {
      BeneficiaryType.recent => ref.watch(
        recentBeneficiariesControllerProvider,
      ),
      BeneficiaryType.saved => ref.watch(
        savedBeneficiariesControllerProvider,
      ),
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Beneficiaries",
          style: context.textTheme.labelMedium?.copyWith(
            letterSpacing: 0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Values.v8.verticalSpacing,
        Row(
          children: [
            _BeneficiaryTypeButton(
              beneficiaryType: BeneficiaryType.recent,
              onTap: () {
                ref
                    .read(beneficiaryTypeControllerProvider.notifier)
                    .switchToRecent();
                ref
                    .read(recentBeneficiariesControllerProvider.notifier)
                    .getRecentBeneficiaries();
              },
            ),
            _BeneficiaryTypeButton(
              beneficiaryType: BeneficiaryType.saved,
              onTap: () {
                ref
                    .read(beneficiaryTypeControllerProvider.notifier)
                    .switchToSaved();
                ref
                    .read(savedBeneficiariesControllerProvider.notifier)
                    .getSavedBeneficiaries();
              },
            ),
          ],
        ),
        Values.v4.verticalSpacing,
        if (beneficiaries.value != null && beneficiaries.value!.isEmpty)
          AppZeroItem(
            topPaddingScaleFactor: .2,
            icon: Icons.group_off_outlined,
            message:
                "No ${beneficiaryType == BeneficiaryType.recent ? 'Recent' : 'Saved'} beneficiary",
          )
        else
          SizedBox(
            height: context.screenHeight * .6,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: beneficiaries.isLoading
                  ? kMockBeneficiaries.length
                  : beneficiaries.value!.length,
              itemBuilder: (context, index) {
                final data = beneficiaries.isLoading
                    ? kMockBeneficiaries
                    : beneficiaries.value!;

                return _BeneficiaryTile(
                  isLoading: beneficiaries.isLoading,
                  beneficiary: data[index],
                  onTap: () => ref
                      .read(appRouterProvider)
                      .push(
                        MakePaymentRoute(
                          recipientNumber: data[index].accountNumber,
                        ),
                      ),
                );
              },
            ),
          ),
      ],
    );
  }
}

class _BeneficiaryTile extends ConsumerWidget {
  const _BeneficiaryTile({
    required this.isLoading,
    required this.beneficiary,
    required this.onTap,
  });

  final bool isLoading;
  final BeneficiaryModel beneficiary;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beneficiaryType = ref.watch(beneficiaryTypeControllerProvider);
    final color = ref.watch(appPrimaryColorProvider);

    return Dismissible(
      key: ValueKey<BeneficiaryModel>(beneficiary),
      direction: DismissDirection.startToEnd,
      onDismissed: (direction) {
        ref
            .read(transactionRepositoryProvider)
            .deleteBeneficiaryById(beneficiary.id);
        if (beneficiaryType == BeneficiaryType.recent) {
          ref
              .read(recentBeneficiariesControllerProvider.notifier)
              .getRecentBeneficiaries();
        } else {
          ref
              .read(savedBeneficiariesControllerProvider.notifier)
              .getSavedBeneficiaries();
        }
      },
      background: Container(
        padding: EdgeInsets.symmetric(horizontal: Values.v8),
        color: Colors.redAccent,
        child: Row(
          children: [
            Icon(
              Icons.delete_outline,
              color: AppColors.white,
            ),
            Text(
              "Delete",
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(Values.v10),
          child: Row(
            children: [
              Skeletonizer(
                enabled: isLoading,
                child: Container(
                  width: Values.v48,
                  height: Values.v48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color.withValues(alpha: .22),
                  ),
                  child: isLoading
                      ? null
                      : Text(
                          getInitials(beneficiary.accountName),
                          style: context.textTheme.bodyMedium?.copyWith(
                            color: color,
                          ),
                        ),
                ),
              ),
              Values.v8.horizontalSpacing,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skeletonizer(
                    enabled: isLoading,
                    child: Text(
                      beneficiary.accountName,
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "Withdrawal . 5.56pm",
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Spacer(),
              if (!isLoading) Icon(CupertinoIcons.chevron_forward),
            ],
          ),
        ),
      ),
    );
  }
}

class _BeneficiaryTypeButton extends ConsumerWidget {
  const _BeneficiaryTypeButton({
    required this.onTap,
    required this.beneficiaryType,
  });

  final VoidCallback onTap;
  final BeneficiaryType beneficiaryType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final BeneficiaryType type = ref.watch(beneficiaryTypeControllerProvider);

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Durations.long4,
        padding: EdgeInsets.all(Values.v10),
        decoration: type != beneficiaryType
            ? null
            : BoxDecoration(
                color: ref.watch(appPrimaryColorProvider).withAlpha(20),
                border: Border.all(
                  color: ref.watch(appPrimaryColorProvider),
                ),
                borderRadius: BorderRadius.circular(32),
              ),
        child: Text(
          beneficiaryType.typeName,
          style: context.textTheme.labelMedium?.copyWith(
            color: type != beneficiaryType
                ? null
                : ref.watch(appPrimaryColorProvider),
          ),
        ),
      ),
    );
  }
}
