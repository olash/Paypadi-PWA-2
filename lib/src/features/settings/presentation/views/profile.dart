import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/constants/constants.dart'
    show kDemoProfilePic, useSpaceOf20, useSpaceOf24, useSpaceOf8;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_avatar.dart' show AppAvatar;
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart'
    show AppTextformfield;

@RoutePage()
class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController firstName = useTextEditingController();
    final TextEditingController lastName = useTextEditingController();
    final TextEditingController email = useTextEditingController();

    final TextStyle? style = context.textTheme.bodySmall?.copyWith(
      fontSize: 13,
      fontWeight: FontWeight.w400,
    );

    return AppScaffold(
      title: "Profile",
      bottomPadding: useSpaceOf24,
      child: Column(
        children: [
          useSpaceOf24.verticalSpacing,
          AppAvatar(radius: 80, imageUrl: kDemoProfilePic),
          useSpaceOf8.verticalSpacing,
          GestureDetector(
            onTap: () {},
            child: Text(
              "Edit photo",
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          useSpaceOf20.verticalSpacing,
          AppTextformfield(
            title: "First Name",
            titleStyle: style,
            controller: firstName,
          ),
          AppTextformfield(
            title: "Last Name",
            titleStyle: style,
            controller: lastName,
          ),
          AppTextformfield(
            title: "Last Name",
            titleStyle: style,
            controller: email,
          ),
          Spacer(),
          FilledButton(
            onPressed: () {},
            child: Text("Save"),
          ),
        ],
      ),
    );
  }
}
