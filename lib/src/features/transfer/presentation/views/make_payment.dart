import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class MakePaymentScreen extends HookConsumerWidget {
  MakePaymentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasSavedAsBeneficiary = useState<bool>(false);
    final TextEditingController comments = useTextEditingController();

    return AppScaffold(
      title: "Transfer",
      child: Column(
        children: [
          32.0.verticalSpacing,

          AppTextformfield(
            title: "Comments",
            hint: "Enter a narration",
            controller: comments,
          ),

          20.0.verticalSpacing,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  "Save as Beneficiary",
                  style: context.textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Switch.adaptive(
                value: hasSavedAsBeneficiary.value,
                onChanged: (value) {
                  hasSavedAsBeneficiary.value = value;
                },
              ),
            ],
          ),

          20.0.verticalSpacing,
          FilledButton(
            onPressed: () {
              context.router.push(EnterPinRoute());
            },
            child: Text("Make Payment"),
          ),
        ],
      ),
    );
  }
}
