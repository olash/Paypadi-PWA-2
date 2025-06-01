import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_avatar.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_pin_indicator.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  LoginScreen({super.key});

  final TapGestureRecognizer forgotPassword = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController pin = useTextEditingController();

    return AppScaffold(
      topPadding: kTopPadding,
      child: Column(
        children: [
          AppAvatar(radius: 80, imageUrl: kDemoProfilePic),
          16.0.verticalSpacing,
          Text(
            "Good evening, ",
            style: context.textTheme.headlineMedium,
          ),

          24.0.verticalSpacing,

          AppPinIndicator(controller: pin),
          Spacer(),

          AppKeypad(
            controller: pin,
            onSubmit: (value) {
              context.router.push(AppBottomBavBarRoute());
            },
          ),
          124.0.verticalSpacing,
          Center(
            child: RichText(
              text: TextSpan(
                text: "Forgot Password?",
                recognizer: forgotPassword,
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
