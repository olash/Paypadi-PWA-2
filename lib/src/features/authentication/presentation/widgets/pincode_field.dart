import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/services/service_registry.dart' show appPrimaryProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart'
    show PinCodeTextField;

class PinCodeField extends ConsumerWidget {
  const PinCodeField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PinCodeTextField(
      maxLength: 6,
      pinBoxWidth: 48,
      pinBoxHeight: 48,
      pinBoxRadius: 12,
      pinBoxBorderWidth: 1,
    
      pinBoxOuterPadding: EdgeInsets.only(right: 4),
      hasTextBorderColor: ref.watch(appPrimaryProvider),
      defaultBorderColor: AppColors.unfocusedTextField,
      pinTextStyle: context.textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w400,
      ),
      controller: controller,
      
    );
  }
}
