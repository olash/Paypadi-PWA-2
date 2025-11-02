import 'package:flutter/material.dart';
import 'package:paypadi/core/utils/constants.dart' show kZeroLetterSpacing;
import 'package:paypadi/core/utils/extensions.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    super.key,
    required this.detail,
    required this.value,
  });

  final String detail;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Text(
            detail,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w400,
              letterSpacing: kZeroLetterSpacing,
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: context.textTheme.bodySmall?.copyWith(
                letterSpacing: kZeroLetterSpacing,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
