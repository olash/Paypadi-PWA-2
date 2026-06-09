import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart' show Iconsax;
import 'package:paypadi/src/features/settings/widgets/setting_tile.dart'
    show SettingTile;
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class LegalScreen extends HookConsumerWidget {
  LegalScreen({super.key});

  final TapGestureRecognizer resendCode = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AppScaffold(
      title: 'Legal & Policies',
      child: SettingTile(
        name: 'Privacy Policy & Terms of Use',
        icon: Iconsax.information_outline,
      ),
    );
  }
}
