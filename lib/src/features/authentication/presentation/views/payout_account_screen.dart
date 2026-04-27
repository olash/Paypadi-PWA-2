import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/validators.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/payout_account_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';
import 'package:paypadi/src/shared/widgets/loading_indicator.dart';

@RoutePage()
class PayoutAccountScreen extends HookConsumerWidget {
  const PayoutAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formRef = useRef(GlobalKey<FormState>());
    final selectedBank = useState<BankModel?>(null);
    final bankSearchController = useSearchController();
    final accountName = useTextEditingController();
    final accountNumber = useTextEditingController();

    ref.listen(payoutAccountControllerProvider, (previous, current) {
      current.when(
        data: (d) {
          ref.dismissLoading();
          accountName.text = d?.bankName ?? '';
          _navigateNext(ref, context);
        },
        error: (e, st) {
          ref.dismissLoading();
          ref.showExceptionMessage(e, st);
        },
        loading: ref.showLoading,
      );
    });

    return AppScaffold(
      showAppBar: true,
      child: Form(
        key: formRef.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Values.v32.verticalSpacing,
            Text(
              'Add your payout account',
              style: context.textTheme.headlineMedium,
            ),
            Values.v16.verticalSpacing,
            Text(
              "We'll send your earnings directly to this account.",
              style: context.textTheme.bodyMedium,
            ),
            Values.v32.verticalSpacing,
            _ListOfBanks(
              controller: bankSearchController,
              onBankSelected: (bank) => selectedBank.value = bank,
            ),
            AppTextformfield(
              title: 'Account Number',
              hint: 'Enter account number',
              controller: accountNumber,
              validator: accountNumberValidator,
              keyboardType: TextInputType.number,
            ),
            AppTextformfield(
              isEnabled: false,
              title: 'Account Name',
              controller: accountName,
            ),
            Values.v24.verticalSpacing,
            FilledButton(
              onPressed: () => _verifyAccountInfo(
                ref,
                selectedBank.value,
                accountNumber.text,
                formRef.value,
              ),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _verifyAccountInfo(
    WidgetRef ref,
    BankModel? bank,
    String accountNumber,
    GlobalKey<FormState> form,
  ) {
    final isFormValid = form.currentState?.validate() ?? false;
    if (!isFormValid || bank == null) return;

    ref.read(payoutAccountControllerProvider.notifier).verifyBankInformation({
      'account_number': accountNumber,
      'bank_code': bank.code,
    });
  }

  void _navigateNext(WidgetRef ref, BuildContext context) {
    if (!context.mounted) return;
    ref.read(appRouterProvider).push(CreatePasswordRoute());
  }
}

class _ListOfBanks extends ConsumerWidget {
  const _ListOfBanks({required this.controller, required this.onBankSelected});
  final SearchController controller;
  final ValueSetter<BankModel> onBankSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch once — shared between the empty state check and the list.
    final banksAsync = ref.watch(bankListControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bank Name',
          style: context.textTheme.bodyLarge?.copyWith(letterSpacing: 0),
        ),
        Values.v6.verticalSpacing,
        // DropdownMenuFormField(dropdownMenuEntries: )
        // SearchAnchor.bar(
        //   isFullScreen: false,
        //   barHintText: 'Select Bank',
        //   searchController: controller,
        //   dividerColor: AppColors.white,
        //   textInputAction: TextInputAction.search,
        //   barLeading: const SizedBox.shrink(),
        //   suggestionsBuilder: (context, searchController) =>
        //       _buildSuggestions(context, banksAsync, searchController),
        // ),
        Values.v12.verticalSpacing,
      ],
    );
  }

  List<Widget> _buildSuggestions(
    BuildContext context,
    AsyncValue<List<BankModel>> banksAsync,
    SearchController searchController,
  ) {
    return banksAsync.when(
      loading: () => const [LoadingIndicator()],
      error: (e, st) => [
        ListTile(
          title: Text(
            'Error loading banks',
            style: context.textTheme.bodyMedium,
          ),
        ),
      ],
      data: (banks) {
        final query = searchController.text.toLowerCase();
        final filtered = query.isEmpty
            ? banks
            : banks.where((b) => b.name.toLowerCase().contains(query)).toList();

        if (filtered.isEmpty) {
          return [
            ListTile(
              title: Text(
                'No banks found',
                style: context.textTheme.bodyMedium,
              ),
            ),
          ];
        }

        return filtered
            .map(
              (bank) => ListTile(
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
              ),
            )
            .toList();
      },
    );
  }
}
