import 'package:flutter/material.dart';
import 'package:paypadi/src/shared/widgets/custom_appbar.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.child,
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
    this.onRefresh,
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
  final Future<void> Function()? onRefresh;
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

    final scaffold = Scaffold(
      backgroundColor: bgColor,
      appBar: showAppBar ? CustomAppbarWithTitle(title: title) : appBar,
      body: SafeArea(
        child: makeScrollable
            ? SingleChildScrollView(
                padding: padding,
                physics: const BouncingScrollPhysics(),
                child: child,
              )
            : Padding(padding: padding, child: child),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );

    return onRefresh != null
        ? RefreshIndicator.adaptive(onRefresh: onRefresh!, child: scaffold)
        : scaffold;
  }
}
