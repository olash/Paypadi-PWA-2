import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class SupportScreen extends HookConsumerWidget {
  SupportScreen({super.key});

  final TapGestureRecognizer resendCode = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController pin = useTextEditingController();

    return AppScaffold(
      child: Column(
        children: [
          Text(
            "Good evening, ",
            style: context.textTheme.headlineMedium,
          ),

          24.0.verticalSpacing,


          124.0.verticalSpacing,
          Center(
            child: RichText(
              text: TextSpan(
                text: "Forgot Password?",
                recognizer: resendCode,
                style: context.textTheme.bodySmall?.copyWith(
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
