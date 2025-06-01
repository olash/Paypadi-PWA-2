import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:paypadi/config/gen/colors.gen.dart';

class AppPinIndicator extends StatefulHookWidget {
  const AppPinIndicator({
    super.key,
    this.numberOfIndicators = 4,
    required this.controller,
  });

  final int numberOfIndicators;
  final TextEditingController controller;

  @override
  State<StatefulWidget> createState() => _AppPinIndicatorState();
}

class _AppPinIndicatorState extends State<AppPinIndicator> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentIndicator = useState<int>(-1);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.numberOfIndicators,
        (index) => AnimatedContainer(
          height: 16,
          width: 16,
          margin: EdgeInsets.only(right: 16),
          duration: Durations.medium4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                currentIndicator.value == index
                    ? AppColors.primary
                    : AppColors.white,
            border: BoxBorder.all(color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
