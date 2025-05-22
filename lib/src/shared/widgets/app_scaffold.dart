import 'package:flutter/material.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.appBarTitle = "",
    this.showUserProfile = false,
    required this.child,
  });

  final bool showUserProfile;
  final Widget child;
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBarTitle.isEmpty
              ? null
              : showUserProfile
              ? _CustomAppBar()
              : AppBar(
                centerTitle: false,
                automaticallyImplyLeading: true,
                title: Text(appBarTitle, style: context.textTheme.titleLarge),
              ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: child,
        ),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  Size get preferredSize => kAppBarSize;
}
