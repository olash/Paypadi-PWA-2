import 'package:flutter/material.dart';

import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/extensions.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, this.padding, required this.child});
  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      margin: EdgeInsets.symmetric(horizontal: 2),
      padding: padding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            offset: Offset(0, 0.05),
            color: AppColors.black.withValues(alpha: .25),
          ),
        ],
      ),
      child: child,
    );
  }
}
