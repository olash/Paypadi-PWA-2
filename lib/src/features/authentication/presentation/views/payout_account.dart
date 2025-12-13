import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class DriverPayoutScreen extends HookConsumerWidget {
  const DriverPayoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bank = useTextEditingController();
    final accountNumber = useTextEditingController();
    final accountName = useTextEditingController();

    return AppScaffold(
      showAppBar: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v32.verticalSpacing,
          Text(
            "Add your payout account",
            style: context.textTheme.headlineMedium,
          ),
          Values.v16.verticalSpacing,
          Text(
            "We’ll send your earnings directly to this account.",
            style: context.textTheme.bodyMedium,
          ),
          Values.v32.verticalSpacing,
          _BankList(controller: bank),
          AppTextformfield(
            title: "Account Number",
            hint: "Enter account number",
            controller: accountNumber,
            keyboardType: TextInputType.number,
          ),
          AppTextformfield(
            isEnabled: false,
            title: "Account Name",
            controller: accountName,
          ),
          Values.v24.verticalSpacing,
          FilledButton(
            onPressed: () {
              ref.read(appRouterProvider).push(PasswordRoute());
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}

class _BankList extends ConsumerWidget {
  const _BankList({required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bank Name",
          style: context.textTheme.bodyLarge?.copyWith(letterSpacing: 0),
        ),
        Values.v6.verticalSpacing,
        SearchAnchor.bar(
          isFullScreen: false,
          barHintText: "Select Bank",
          viewHintText: "Select Bank",
          dividerColor: AppColors.white,
          textInputAction: TextInputAction.search,
          barLeading: SizedBox.shrink(),
          suggestionsBuilder: (context, searchController) {
            final List<BankModel> viableBanks = _search(
              ref,
              searchController.text,
            ).toList();

            return List<Widget>.generate(
              viableBanks.length,
              (int index) {
                final BankModel bank = viableBanks[index];
                return ListTile(
                  title: Text(
                    bank.name,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColors.grey500,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    searchController.closeView(bank.name);
                    controller.text = bank.name;
                  },
                );
              },
            );
          },
        ),

        Values.v12.verticalSpacing,
      ],
    );
  }

  Iterable<BankModel> _search(WidgetRef ref, String query) {
    final banks = ref.watch(banksListProvider);

    return banks.when(
      data: (banks) {
        if (query.isEmpty) return banks;
        return banks.where(
          (bank) => bank.name.toLowerCase().contains(query.toLowerCase()),
        );
      },
      error: (error, st) {
        return const Iterable.empty();
      },
      loading: () => const Iterable.empty(),
    );
  }
}
