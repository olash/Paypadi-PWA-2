import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class TransferScreen extends HookConsumerWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController accountNo = useTextEditingController();

    return AppScaffold(
      title: "Transfer",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          32.0.verticalSpacing,
          AppTextformfield(
            title: "Account Number",
            hint: "Enter 10-digit Account number or Phone Number",
            controller: accountNo,
            keyboardType: TextInputType.number,
          ),
          50.0.verticalSpacing,
          FilledButton(
            onPressed: () {},
            child: Text("Continue"),
          ),
          30.0.verticalSpacing,
          Text(
            "Your Beneficiaries",
            style: context.textTheme.labelMedium?.copyWith(
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
            ),
          ),
          8.0.verticalSpacing,
        ],
      ),
    );
  }
}
