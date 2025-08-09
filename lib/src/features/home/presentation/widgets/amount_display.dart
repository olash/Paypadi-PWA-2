import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';

class AmountDisplay extends HookWidget {
  const AmountDisplay({super.key, required this.input});
  final String input;

  @override
  Widget build(BuildContext context) {
    final pickedAmount = useState<int>(0);
    final amount = useState<String>("");

    return Column(
      spacing: 12,
      children: [
        Container(
          width: 361.0.sW,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.amountDisplayBorderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              input.isNotEmpty
                  ? "₦${formatAmount(5000)}"
                  : "₦${pickedAmount.value}",
              style: context.textTheme.headlineLarge,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (PickedAmount amount in PickedAmount.values)
              GestureDetector(
                onTap: () => pickedAmount.value = amount.value,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(
                      color: AppColors.amountDisplayBorderColor,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    amount.displayedAmount,
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
