import 'package:flutter/material.dart';
import 'package:paypadi/core/utils/constants.dart'
    show Values, kZeroLetterSpacing, placeholder;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    super.key,
    required this.detail,
    required this.value,
    this.isLoading = false,
  });

  final String detail;
  final String? value;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Values.v14),
      child: Row(
        children: [
          Expanded(
            child: Skeletonizer(
              enabled: isLoading,
              child: Text(
                detail,
                style: context.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: kZeroLetterSpacing,
                ),
              ),
            ),
          ),
          Expanded(
            child: Skeletonizer(
              enabled: isLoading,
              child: Text(
                value ?? placeholder,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,
                style: context.textTheme.bodySmall?.copyWith(
                  letterSpacing: kZeroLetterSpacing,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
