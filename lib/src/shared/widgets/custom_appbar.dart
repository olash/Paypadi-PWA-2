import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_avatar.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.name,
    required this.profilePic,
  });

  final String name;
  final String profilePic;

  @override
  Size get preferredSize => kAppBarSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppAvatar(radius: 40, imageUrl: profilePic),
        10.0.horizontalSpacing,
        Text(
          "Hi, $name",
          style: context.textTheme.bodyLarge,
        ),
        Spacer(),
        Icon(Iconsax.notification_outline),
      ],
    );
  }
}
