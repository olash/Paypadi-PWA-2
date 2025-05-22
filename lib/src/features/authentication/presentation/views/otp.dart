import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class OtpScreen extends HookConsumerWidget {
  OtpScreen({super.key});

  final TapGestureRecognizer resendCode = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final TextEditingController otp = useTextEditingController();

    return AppScaffold(
      appBarTitle: "",
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
          //! OTP textfield here
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
