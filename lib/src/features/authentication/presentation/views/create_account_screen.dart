import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/gen/fonts.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/core/utils/validators.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/authentication_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';
import 'package:paypadi/src/shared/widgets/loading_indicator.dart';

@RoutePage()
class CreateAccountScreen extends HookConsumerWidget {
  CreateAccountScreen({super.key});

  final TapGestureRecognizer signInRecognizer = TapGestureRecognizer();
  final GlobalKey<FormState> form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneNumber = useTextEditingController();

    useEffect(() {
      signInRecognizer.onTap = () {
        ref.read(appRouterProvider).push(SignInRoute());
      };
      return () => signInRecognizer.dispose();
    }, []);

    ref.listen(authControllerProvider, (previous, current) {
      current.when(
        data: (d) {
          dismissLoadingOverlay(context);
          phoneNumber.clear();
        },
        error: (e, st) {
          dismissLoadingOverlay(context);
          showErrorDialog(message: e.toString());
          phoneNumber.clear();
        },
        loading: () => showLoadingOverlay(context, ref),
      );
    });

    return AppScaffold(
      showAppBar: true,
      child: Form(
        key: form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Values.v32.verticalSpacing,
            Text(
              "Let’s get\nyou started",
              style: context.textTheme.headlineMedium,
            ),
            Values.v32.verticalSpacing,
            PhoneTextField(
              controller: phoneNumber,
              validator: (number) => phoneNumberValidator(number),
            ),
            Values.v16.verticalSpacing,
            _TermsAndPrivacyRichText(),
            Values.v16.verticalSpacing,
            FilledButton(
              onPressed: () => requestForOtp(ref, phoneNumber.text),
              child: Text("Create Account"),
            ),
            Values.v8.verticalSpacing,
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontFamily: FontFamily.manrope,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign in",
                      recognizer: signInRecognizer,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontFamily: FontFamily.manrope,
                        color: ref.watch(appPrimaryColorProvider),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void requestForOtp(WidgetRef ref, String phoneNumber) {
    if (form.currentState!.validate()) {
      ref.read(authControllerProvider.notifier).payloadBuilder["phone_number"] =
          phoneNumber;
      ref.read(authControllerProvider.notifier).requestForOtp();
    }
  }
}

class _TermsAndPrivacyRichText extends HookConsumerWidget {
  final TapGestureRecognizer termsOfServiceRecognizer = TapGestureRecognizer();
  final TapGestureRecognizer privacyPolicyRecognizer = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      termsOfServiceRecognizer.onTap = () {};
      privacyPolicyRecognizer.onTap = () {};
      return () {
        termsOfServiceRecognizer.dispose();
        privacyPolicyRecognizer.dispose();
      };
    }, []);

    return RichText(
      text: TextSpan(
        text: "By proceeding, you agree to our",
        style: context.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.manrope,
        ),
        children: [
          TextSpan(
            text: " Terms of Service ",
            recognizer: termsOfServiceRecognizer,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.manrope,
              color: ref.watch(appPrimaryColorProvider),
            ),
          ),
          TextSpan(
            text: "and ",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.manrope,
            ),
          ),
          TextSpan(
            text: "Privacy Policy",
            recognizer: privacyPolicyRecognizer,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.manrope,
              color: ref.watch(appPrimaryColorProvider),
            ),
          ),
        ],
      ),
    );
  }
}
