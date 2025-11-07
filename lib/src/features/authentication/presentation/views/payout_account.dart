import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/provider_registry/service_registry.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/authentication_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class DriverPayoutScreen extends HookConsumerWidget {
  const DriverPayoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          _BankList(),
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
  const _BankList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final banks = ref.watch(bankListProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bank Name",
          style: context.textTheme.bodyLarge?.copyWith(letterSpacing: 0),
        ),
        Values.v6.verticalSpacing,
        banks.when(
          data: (banks) {
            return DropdownMenu(
              hintText: "Select Bank",
              dropdownMenuEntries: [
                for (String bank in banks)
                  DropdownMenuEntry(
                    value: bank,
                    label: bank,
                  ),
              ],
            );
          },
          error: (error, stackTrace) => SizedBox.shrink(),
          loading: () => SizedBox.shrink(),
        ),
        Values.v12.verticalSpacing,
      ],
    );
  }
}
