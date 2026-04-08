import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/home/controller/wallet_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_zero_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
                height: context.screenHeight * .8,
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
                      onTap: () {},
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

    return Padding(
      padding: EdgeInsets.symmetric(vertical: Values.v8),
      child: Row(
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
              child: isLoading ? null : Icon(Icons.arrow_upward, color: color),
            ),
          ),
          Values.v12.horizontalSpacing,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Skeletonizer(
                enabled: isLoading,
                child: Text(
                  "Transfer ${transaction.type}",
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                getTransactionDate(transaction.createdAt),
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [],
          ),
        ],
      ),
    );
  }
}
