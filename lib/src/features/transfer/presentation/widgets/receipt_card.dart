import 'package:flutter/material.dart';
import 'package:paypadi/config/gen/colors.gen.dart';

class ReceiptCard extends StatelessWidget {
  const ReceiptCard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24, 32, 24, 48),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }
}
