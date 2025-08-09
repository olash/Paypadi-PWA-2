import 'package:flutter/material.dart';
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
        5.0.verticalSpacing,
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hint,
            // prefix:
            //     showCountryFlag
            //         ? Row(
            //           children: [
            //             Flag(Flags.nigeria),
            //             5.0.horizontalSpacing,
            //             Text(
            //               "+234",
            //               style: context.textTheme.titleSmall?.copyWith(
            //                 fontWeight: FontWeight.w400,
            //               ),
            //             ),
            //             10.0.horizontalSpacing,
            //             VerticalDivider(
            //               width: 4,
            //               color: AppColors.black,
            //             ),
            //           ],
            //         )
            //         : null,
          ),
        ),
        12.0.verticalSpacing,
      ],
    );
  }
}
