import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/services/service_registry.dart' show appPrimaryProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class CreateAccountScreen extends HookConsumerWidget {
  CreateAccountScreen({super.key});

  final TapGestureRecognizer termsOfService =
      TapGestureRecognizer()..onTap = () {};

  final TapGestureRecognizer privacyPolicy =
      TapGestureRecognizer()..onTap = () {};

  final TapGestureRecognizer signIn = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController phoneNumber = useTextEditingController();

    return AppScaffold(
      title: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          40.0.verticalSpacing,
          Text(
            "Let’s get\nyou started",
            style: context.textTheme.headlineMedium,
          ),
          32.0.verticalSpacing,
          //TODO: Design special textfield for phone number
          AppTextformfield(
            title: "Phone Number",
            hint: "Enter phone number",
            controller: phoneNumber,

            keyboardType: TextInputType.phone,
          ),
          4.0.verticalSpacing,
          RichText(
            text: TextSpan(
              text: "By proceeding, you agree to our",
              style: context.textTheme.bodySmall?.copyWith(letterSpacing: 0.5),
              children: [
                TextSpan(
                  text: " Terms of Service ",
                  recognizer: termsOfService,
                  style: context.textTheme.bodySmall?.copyWith(
                    letterSpacing: 0.5,
                    color: ref.watch(appPrimaryProvider),
                  ),
                ),
                TextSpan(
                  text: "and ",
                  style: context.textTheme.bodySmall?.copyWith(
                    letterSpacing: 0.5,
                  ),
                ),
                TextSpan(
                  text: "Privacy Policy",
                  recognizer: privacyPolicy,
                  style: context.textTheme.bodySmall?.copyWith(
                    letterSpacing: 0.5,
                    color: ref.watch(appPrimaryProvider),
                  ),
                ),
              ],
            ),
          ),
          16.0.verticalSpacing,
          FilledButton(
            onPressed: () => context.router.push(OtpRoute()),
            child: Text("Create Account"),
          ),
          8.0.verticalSpacing,
          Center(
            child: RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: context.textTheme.bodySmall?.copyWith(
                  letterSpacing: 0.5,
                ),
                children: [
                  TextSpan(
                    text: "Sign in",
                    recognizer:
                        signIn..onTap = () => context.router.push(LoginRoute()),
                    style: context.textTheme.bodySmall?.copyWith(
                      letterSpacing: 0.5,
                      color: ref.watch(appPrimaryProvider),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
