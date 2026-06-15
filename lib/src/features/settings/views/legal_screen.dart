import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LegalScreen extends HookConsumerWidget {
  LegalScreen({super.key});

  final TapGestureRecognizer resendCode = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    throw UnimplementedError();
    // return const AppScaffold(
    //   title: 'Legal & Policies',
    //   child: SettingTile(
    //     name: 'Privacy Policy & Terms of Use',
    //     icon: Iconsax.information_outline,
    //   ),
    // );
  }
}
