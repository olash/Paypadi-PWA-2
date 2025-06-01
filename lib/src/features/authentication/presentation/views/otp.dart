import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/authentication/presentation/widgets/pincode_field.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class OtpScreen extends HookConsumerWidget {
  OtpScreen({super.key});

  final TapGestureRecognizer resendCode = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController pinCode = useTextEditingController();

    return AppScaffold(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("OTP\nverification", style: context.textTheme.headlineMedium),
          16.0.verticalSpacing,
          Text(
            "Kindly provide the verification code sent to your +234*******75.",
            style: context.textTheme.bodyMedium,
          ),
          24.0.verticalSpacing,
          Center(
            child: PinCodeField(controller: pinCode),
          ),
          12.0.verticalSpacing,
          Center(
            child: RichText(
              text: TextSpan(
                text: "Didn’t get a code? ",
                style: context.textTheme.bodySmall?.copyWith(
                  letterSpacing: 0.5,
                ),
                children: [
                  TextSpan(
                    text: "Send again",
                    recognizer: resendCode,
                    style: context.textTheme.bodySmall?.copyWith(
                      letterSpacing: 0.5,
                      color: AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          24.0.verticalSpacing,
          FilledButton(
            onPressed: () => context.router.push(SetupAccountRoute()),
            child: Text("Verify"),
          ),
          8.0.verticalSpacing,
        ],
      ),
    );
  }
}
