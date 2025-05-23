import 'package:flutter/material.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart'
    show PinCodeTextField;

class PinCodeField extends StatelessWidget {
  const PinCodeField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      maxLength: 6,
      pinBoxWidth: 48,
      pinBoxHeight: 48,
      pinBoxRadius: 12,
      pinBoxBorderWidth: 1,
      pinBoxOuterPadding: EdgeInsets.only(right: 4),
      hasTextBorderColor: AppColors.primary,
      defaultBorderColor: AppColors.unfocusedTextField,
      pinTextStyle: context.textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w400,
      ),
      controller: controller,
    );
  }
}
