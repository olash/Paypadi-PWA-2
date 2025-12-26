import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/bank_account_model/bank_account_model.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/utils/validators.dart';
import 'package:paypadi/src/features/home/controller/wallet_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';
import 'package:paypadi/src/shared/widgets/loading_indicator.dart';

@RoutePage()
class DriverPayoutScreen extends HookConsumerWidget {
  const DriverPayoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bankController = useSearchController();
    final selectedBank = useState<String>("");
    final selectedBankCode = useState<String>("");
    final accountNumber = useTextEditingController();
    final accountName = useTextEditingController();
    final form = GlobalKey<FormState>();

    useEffect(() {
      void listener() {
        if (selectedBank.value.isNotEmpty) {
          getAccountName(
            ref,
            form,
            selectedBankCode.value,
            accountName,
            accountNumber.text,
          );
        }
      }

      accountNumber.addListener(listener);
      return () => accountNumber.removeListener(listener);
    }, [selectedBank.value]);

    return AppScaffold(
      showAppBar: true,
      child: Form(
        key: form,
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
            _BankList(
              controller: bankController,
              onBankSelected: (bank) {
                selectedBank.value = bank.name;
                selectedBankCode.value = bank.code;
              },
            ),
            AppTextformfield(
              title: "Account Number",
              hint: "Enter account number",
              controller: accountNumber,
              validator: (value) => accountNumberValidator(value),
              keyboardType: TextInputType.number,
            ),
            AppTextformfield(
              isEnabled: false,
              title: "Account Name",
              controller: accountName,
            ),
            Values.v24.verticalSpacing,
            FilledButton(
              onPressed: () async {
                final payload = {
                  "account_number": accountNumber,
                  "bank_code": selectedBankCode.value,
                };
                final BankAccountModel? accountInfo = await ref
                    .read(walletControllerProvider.notifier)
                    .verifyBankAndGetAccountName(payload);
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }

  void getAccountName(
    WidgetRef ref,
    GlobalKey<FormState> form,
    String bankCode,
    TextEditingController accountNameController,
    String accountNumber,
  ) async {
    if (form.currentState?.validate() ?? false) {
      final payload = {
        "account_number": accountNumber,
        "bank_code": bankCode,
      };

      final BankAccountModel? accountInfo = await ref
          .read(walletControllerProvider.notifier)
          .verifyBankAndGetAccountName(payload);

      accountNameController.text = accountInfo?.name ?? "";
    }
  }

  void submit(WidgetRef ref) {
    ref.read(appRouterProvider).push(PasswordRoute());
  }
}

class _BankList extends HookConsumerWidget {
  const _BankList({required this.controller, required this.onBankSelected});
  final SearchController controller;
  final ValueSetter<BankModel> onBankSelected;

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
          searchController: controller,
          dividerColor: AppColors.white,
          textInputAction: TextInputAction.search,
          barLeading: SizedBox.shrink(),
          suggestionsBuilder: (context, searchController) {
            final banks = ref.watch(banksListProvider);

            final List<BankModel> viableBanks = _search(
              ref,
              searchController.text,
            ).toList();

            return banks.when(
              data: (data) {
                if (viableBanks.isEmpty) {
                  return [
                    ListTile(
                      title: Text(
                        'No banks found',
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                  ];
                }

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
                        onBankSelected(bank);
                        controller.text = bank.name;
                        searchController.closeView(bank.name);
                      },
                    );
                  },
                );
              },
              error: (e, st) => [
                ListTile(
                  title: Text(
                    'Error loading banks',
                    style: context.textTheme.bodyMedium,
                  ),
                ),
              ],
              loading: () => [const LoadingIndicator()],
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
