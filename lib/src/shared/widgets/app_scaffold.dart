import 'package:flutter/material.dart';
import 'package:paypadi/core/utils/extensions.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.appBar,
    this.title,
    this.bgColor,
    this.topPadding,
    this.bottomPadding,
    this.bottomNavigationBar,
    required this.child,
  });

  final Widget child;
  final String? title;
  final Color? bgColor;
  final double? topPadding;
  final double? bottomPadding;
  final PreferredSizeWidget? appBar;
  final BottomNavigationBar? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar:
          title != null
              ? AppBar(
                centerTitle: false,
                automaticallyImplyLeading: true,
                title: Text(title!, style: context.textTheme.titleLarge),
              )
              : appBar,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: bottomPadding ?? 0,
            top: topPadding ?? 0,
          ),
          child: child,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

// class AppBackButton extends StatelessWidget {
//   const AppBackButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () => context.router.pop(),
//       icon: Icon(
//         Icons.arrow_back_ios_new_rounded,
//       ),
//     );
//   }
// }
