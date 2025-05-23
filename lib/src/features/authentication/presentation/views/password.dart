import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class PasswordScreen extends HookConsumerWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController password = useTextEditingController();
    final TextEditingController confirmPassword = useTextEditingController();

    return AppScaffold(
      appBarTitle: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Create your Password", style: context.textTheme.headlineMedium),
          16.0.verticalSpacing,
          Text(
            "Set a secure password for your account",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          32.0.verticalSpacing,
          AppPinIndicator(),
          100.0.verticalSpacing,
          AppKeypad(),
        ],
      ),
    );
  }
}
