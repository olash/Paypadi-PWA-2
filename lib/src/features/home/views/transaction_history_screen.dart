import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/home/controller/wallet_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_zero_item.dart';

@RoutePage()
class TransactionHistoryScreen extends ConsumerWidget {
  const TransactionHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionHistory = ref.watch(historyControllerProvider);

    return RefreshIndicator.adaptive(
      onRefresh: () {
        return Future(() {
          ref.invalidate(historyControllerProvider);
        });
      },

      child: AppScaffold(
        showAppBar: false,
        leftPadding: Values.zero,
        rightPadding: Values.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Transactions",
              style: context.textTheme.titleMedium,
            ),
            if (transactionHistory.value != null &&
                transactionHistory.value!.isEmpty)
              AppZeroItem(
                topPaddingScaleFactor: .4,
                icon: Icons.receipt_long_outlined,
                message: "No Recent Transaction",
              )
            else
              SizedBox(
                height: context.screenHeight * .75,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: Values.v16),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: transactionHistory.isLoading
                      ? kMockTransactionHistory.length
                      : transactionHistory.value!.length,
                  itemBuilder: (context, index) {
                    final data = transactionHistory.isLoading
                        ? kMockTransactionHistory
                        : transactionHistory.value!;

                    return _TransactionTile(
                      isLoading: transactionHistory.isLoading,
                      transaction: data[index],
                      onTap: () => ref
                          .read(appRouterProvider)
                          .push(
                            ReceiptRoute(referenceId: data[index].reference),
                          ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _TransactionTile extends ConsumerWidget {
  const _TransactionTile({
    required this.isLoading,
    required this.transaction,
    required this.onTap,
  });

  final bool isLoading;
  final TransactionHistoryModel transaction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(appPrimaryColorProvider);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Values.v8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Skeletonizer(
              enabled: isLoading,
              child: Container(
                width: Values.v48,
                height: Values.v48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: .1),
                  borderRadius: BorderRadius.circular(Values.v16),
                ),
                child: isLoading
                    ? Icon(Icons.question_mark, color: color)
                    : Icon(
                        switch (transaction.type) {
                          TransactionType.deposit => Icons.arrow_downward,
                          TransactionType.transfer ||
                          TransactionType.withdrawal => Icons.arrow_upward,
                          TransactionType.unknown => Icons.question_mark,
                        },
                        color: color,
                      ),
              ),
            ),
            Values.v12.horizontalSpacing,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skeletonizer(
                    enabled: isLoading,
                    child: Text(
                      "Transfer ${getTransactionDirectionLabel(transaction.type)} ${name(transaction.type)}",
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Skeletonizer(
                    enabled: isLoading,
                    child: Text(
                      getTransactionDate(transaction.createdAt),
                      style: context.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Values.v12.horizontalSpacing,
            Skeletonizer(
              enabled: isLoading,
              child: Text(
                 "${amountSign(transaction.type)}₦ ${formatAmount(transaction.amount)}",
                style: context.textTheme.bodyLarge?.copyWith(
                  color: transactionColor(transaction.type),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String name(TransactionType type) {
    return switch (type) {
      TransactionType.deposit => transaction.senderName,
      TransactionType.transfer ||
      TransactionType.withdrawal => transaction.recipientName,
      TransactionType.unknown => '?',
    };
  }

  String amountSign(TransactionType type) {
    return switch (type) {
      TransactionType.deposit => "+",
      TransactionType.transfer || TransactionType.withdrawal => "-",
      TransactionType.unknown => '?',
    };
  }

  Color transactionColor(TransactionType type) {
    return switch (type) {
      TransactionType.deposit => AppColors.success,
      TransactionType.transfer ||
      TransactionType.withdrawal => AppColors.failure,
      TransactionType.unknown => AppColors.disabled,
    };
  }
}
