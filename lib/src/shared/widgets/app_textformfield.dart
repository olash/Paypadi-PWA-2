import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/extensions.dart';

class AppTextformfield extends StatelessWidget {
  const AppTextformfield({
    super.key,
    this.hint,
    this.showCountryFlag = false,
    this.keyboardType = TextInputType.text,
    required this.title,
    required this.controller,
  });

  final String title;
  final String? hint;
  final bool showCountryFlag;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.bodyLarge?.copyWith(letterSpacing: 0),
        ),
        5.0.verticalSpacing,
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
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
            hintText: hint,
          ),
        ),
        12.0.verticalSpacing,
      ],
    );
  }
}
