import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart'
    show ConsumerWidget, WidgetRef;
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/gen/fonts.gen.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';

class AppTextformfield extends StatelessWidget {
  const AppTextformfield({
    super.key,
    this.hint,
    this.titleStyle,
    this.keyboardType = TextInputType.text,
    required this.title,
    required this.controller,
  });

  final String title;
  final String? hint;
  final TextStyle? titleStyle;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              titleStyle ??
              context.textTheme.bodyLarge?.copyWith(letterSpacing: 0),
        ),
        Values.v6.verticalSpacing,
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(hintText: hint),
        ),
        Values.v12.verticalSpacing,
      ],
    );
  }
}

class PhoneTextField extends ConsumerWidget {
  const PhoneTextField({
    super.key,
    this.validator,
    required this.controller,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(appPrimaryProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone Number",
          style: context.textTheme.titleMedium?.copyWith(
            letterSpacing: Values.zero,
            fontFamily: FontFamily.manrope,
          ),
        ),
        Values.v6.verticalSpacing,
        Row(
          spacing: Values.v6,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Values.v16,
                vertical: Values.v12,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.unfocusedTextField),
                borderRadius: BorderRadius.circular(Values.v18),
              ),
              child: Row(
                spacing: Values.v8,
                children: [
                  AppAssets.icons.ngFlag.svg(),
                  Text(
                    "+234",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColors.hintText,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: controller,
                validator: validator,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Enter phone number",
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: Values.v16,
                    vertical: Values.v8,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: color),
                    borderRadius: BorderRadius.circular(Values.v18),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Values.v18),
                    borderSide: const BorderSide(
                      color: AppColors.unfocusedTextField,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Values.v12.verticalSpacing,
      ],
    );
  }
}
