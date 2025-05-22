import 'package:flutter/material.dart';
import 'package:paypadi/core/utils/extensions.dart';

class AppTextformfield extends StatelessWidget {
  const AppTextformfield({
    super.key,
    this.hint,
    this.keyboardType = TextInputType.text,
    required this.title,
    required this.controller,
  });

  final String title;
  final String? hint;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.bodyLarge?.copyWith(letterSpacing: 0.5),
        ),
        5.0.verticalSpacing,
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(hintText: hint),
        ),
        12.0.verticalSpacing,
      ],
    );
  }
}
