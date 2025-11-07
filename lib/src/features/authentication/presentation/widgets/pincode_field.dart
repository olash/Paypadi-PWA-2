import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/provider_registry/service_registry.dart'
    show appPrimaryColorProvider;
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart'
    show PinCodeTextField;

class PinCodeField extends ConsumerWidget {
  const PinCodeField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PinCodeTextField(
      maxLength: Values.v6.toInt(),
      pinBoxWidth: Values.v48,
      pinBoxHeight: Values.v48,
      pinBoxRadius: Values.v12,
      pinBoxBorderWidth: Values.v1,
      pinBoxOuterPadding: EdgeInsets.only(right: Values.v4),
      hasTextBorderColor: ref.watch(appPrimaryColorProvider),
      defaultBorderColor: AppColors.unfocusedTextField,
      pinTextStyle: context.textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w400,
      ),
      controller: controller,
    );
  }
}
