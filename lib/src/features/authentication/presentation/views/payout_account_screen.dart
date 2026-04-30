import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/validators.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/bank_account_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class PayoutAccountScreen extends HookConsumerWidget {
  const PayoutAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formRef = useRef(GlobalKey<FormState>());
    final bankCode = useState<String>('');
    final bankController = useTextEditingController();
    final accountName = useTextEditingController();
    final accountNumber = useTextEditingController();

    ref.listen(verifiedBankAccountProvider, (previous, current) {
      current.when(
        data: (d) {
          ref.dismissLoading();
          accountName.text = d?.accountName ?? '';
        },
        error: (e, st) {
          ref.dismissLoading();
          ref.showExceptionMessage(e, st);
        },
        loading: ref.showLoading,
      );
    });

    ref.listen(bankListControllerProvider, (_, state) {
      state.when(
        data: (d) {
          ref.dismissLoading();
        },
        error: (e, st) {
          ref.dismissLoading();
          ref.showExceptionMessage(e);
        },
        loading: () => ref.showLoading(),
      );
    });

    useEffect(() {
      void listener() {
        if (accountNumber.text.length == 10 && bankCode.value.isNotEmpty) {
          _verifyAccountInfo(
            ref,
            bankCode.value,
            accountNumber.text,
            formRef.value,
          );
        }
      }

      accountNumber.addListener(listener);
      return () => accountNumber.removeListener(listener);
    }, [accountNumber]);

    return AppScaffold(
      showAppBar: true,
      makeScrollable: true,
      child: Form(
        key: formRef.value,
        autovalidateMode: AutovalidateMode.always,
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
              controller: bankController,
              onBankSelected: (bank) => bankCode.value = bank.code,
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
              hint: 'Account Name',
              controller: accountName,
            ),
            Values.v24.verticalSpacing,
            FilledButton(
              onPressed: () => _navigateNext(ref, context),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _verifyAccountInfo(
    WidgetRef ref,
    String bankCode,
    String accountNumber,
    GlobalKey<FormState> form,
  ) {
    final isFormValid = form.currentState?.validate() ?? false;
    if (!isFormValid || bankCode.isEmpty) return;

    ref.read(verifiedBankAccountProvider.notifier).verifyBankInformation({
      'account_number': accountNumber,
      'bank_code': bankCode,
    });
  }

  void _navigateNext(WidgetRef ref, BuildContext context) {
    final verified = ref.read(verifiedBankAccountProvider);
    if (!verified.hasValue || verified.value == null) {
      ref.showErrorToast("Please verify your account details first.");
      return;
    }

    if (!context.mounted) return;

    ref.read(appRouterProvider).push(SignInRoute());
  }
}

class _ListOfBanks extends ConsumerWidget {
  const _ListOfBanks({required this.controller, required this.onBankSelected});
  final TextEditingController controller;
  final ValueSetter<BankModel> onBankSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final banks = ref.watch(bankListControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bank Name',
          style: context.textTheme.bodyLarge?.copyWith(letterSpacing: 0),
        ),
        Values.v6.verticalSpacing,

        DropdownMenu<BankModel>(
          enableFilter: true,
          requestFocusOnTap: true,
          hintText: "Select Bank",
          controller: controller,
          width: context.screenWidth,
          menuHeight: context.screenHeight * .4,
          trailingIcon: Icon(Iconsax.arrow_down_1_outline),
          selectedTrailingIcon: SizedBox.shrink(),
          onSelected: (bank) {
            if (bank == null) return;
            onBankSelected(bank);
          },
          dropdownMenuEntries: [
            for (BankModel bank in banks.value ?? <BankModel>[])
              DropdownMenuEntry<BankModel>(
                value: bank,
                label: bank.name,
              ),
          ],
        ),
        Values.v12.verticalSpacing,
      ],
    );
  }
}
