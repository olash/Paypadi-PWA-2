import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_avatar.dart';

class CustomAppbarWithTitle extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppbarWithTitle({super.key, this.title});
  final String? title;

  @override
  Size get preferredSize => kAppBarSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kToolbarHeight),
      child: Row(
        spacing: Values.v20,
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: Icon(CupertinoIcons.chevron_back),
          ),
          if (title != null)
            Text(
              title!,
              style: context.textTheme.titleLarge,
            ),
        ],
      ),
    );
  }
}

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.profilePic,
    required this.name,
  });

  final String? name;
  final String? profilePic;

  @override
  Size get preferredSize => kAppBarSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppAvatar(radius: Values.v48, imageUrl: profilePic),
        Values.v10.horizontalSpacing,
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
