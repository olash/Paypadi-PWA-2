import 'package:flutter/material.dart';
import 'package:paypadi/src/shared/widgets/custom_appbar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.title,
    this.appBar,
    this.bgColor,
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.bottomPadding,
    this.showAppBar = true,
    this.makeScrollable = false,
    this.bottomNavigationBar,
    required this.child,
  });

  final Widget child;
  final bool makeScrollable;
  final bool showAppBar;
  final String? title;
  final Color? bgColor;
  final double? topPadding;
  final double? bottomPadding;
  final double? leftPadding;
  final double? rightPadding;
  final PreferredSizeWidget? appBar;
  final BottomNavigationBar? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    final EdgeInsetsGeometry padding = EdgeInsets.only(
      left: leftPadding ?? 16,
      right: rightPadding ?? 16,
      bottom: bottomPadding ?? 0,
      top: topPadding ?? 0,
    );

    return Scaffold(
      backgroundColor: bgColor,
      appBar: showAppBar
          ? CustomAppbarWithTitle(title: title)
          :  appBar,
      body: SafeArea(
        child: makeScrollable
            ? SingleChildScrollView(
                padding: padding,
                physics: BouncingScrollPhysics(),
                child: child,
              )
            : Padding(padding: padding, child: child),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
