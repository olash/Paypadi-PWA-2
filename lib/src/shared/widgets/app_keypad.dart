import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/extensions.dart';

class AppKeypad extends HookWidget {
  const AppKeypad({
    super.key,
    this.pinLength = 4,
    this.showBiometric = false,
    this.padding,
    this.onSubmit,
    this.onBiometricKeyPressed,
    required this.controller,
  });

  final int pinLength;
  final bool showBiometric;
  final TextEditingController controller;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onBiometricKeyPressed;
  final ValueChanged<String>? onSubmit;

  @override
  Widget build(BuildContext context) {
    final List<String> keys = [
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '.',
      '0',
      'x',
    ];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: keys.length,
      padding: padding,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.1,
        mainAxisSpacing: 16,
        crossAxisSpacing: 40,
      ),
      itemBuilder: (context, index) => buildKeyButton(context, keys[index]),
    );
  }

  void onTap(String key) {
    HapticFeedback.lightImpact();
    if (controller.text.length < pinLength && key != 'x') {
      controller.text += key;
    }

    if (controller.text.isNotEmpty && key == 'x') {
      controller.clear();
    }

    if (controller.text.length == pinLength) {
      onSubmit?.call(controller.text);
    }

    log(controller.text);
  }

  Widget buildKeyButton(BuildContext context, String key) {
    // if (key.isEmpty) {
    //   return GestureDetector(
    //     onTap: widget.onBiometricKeyPressed,
    //     child: SvgPicture.asset(Assets.svgs.scan),
    //   );
    // }
    return InkWell(
      onTap: () => onTap(key),
      customBorder: CircleBorder(),
      splashColor: AppColors.primaryFocused.withValues(alpha: .1),
      child: Center(
        child: switch (key) {
          "x" => Icon(Icons.backspace_outlined),
          _ => Text(key, style: context.textTheme.headlineSmall),
        },
      ),
    );
  }
}
