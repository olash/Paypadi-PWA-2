import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';

class AmountDisplay extends HookWidget {
  const AmountDisplay({super.key, required this.inputtedAmount});

  final String inputtedAmount;

  @override
  Widget build(BuildContext context) {
    final pickedAmount = useState<int>(0);

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
              inputtedAmount.isNotEmpty
                  ? "₦$inputtedAmount"
                  : "₦${pickedAmount.value}",
              style: context.textTheme.headlineLarge,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...PickedAmount.values.map(
              (amount) => GestureDetector(
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
            ),
          ],
        ),
      ],
    );
  }
}
