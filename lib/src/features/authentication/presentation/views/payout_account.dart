import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/constants.dart' show CacheKeys, Values;
import 'package:paypadi/core/utils/extensions.dart';
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
          //TODO: Place Bank dropdown field here
          AppTextformfield(
            title: "Account Number",
            hint: "Enter account number",
            controller: accountNumber,
          ),

          AppTextformfield(
            title: "Account Name",
            isEnabled: false,
            controller: accountName,
          ),

          Values.v24.verticalSpacing,
          FilledButton(
            onPressed: () {},
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
