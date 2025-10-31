import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/fonts.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/services/service_registry.dart'
    show appPrimaryProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class CreateAccountScreen extends HookConsumerWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneNumber = useTextEditingController();

    final termsOfService = useMemoized(
      () => TapGestureRecognizer()..onTap = () {},
      [],
    );
    final privacyPolicy = useMemoized(
      () => TapGestureRecognizer()..onTap = () {},
      [],
    );
    final signIn = useMemoized(
      () =>
          TapGestureRecognizer()
            ..onTap = () => context.router.push(LoginRoute()),
      [context],
    );

    useEffect(() {
      return () {
        termsOfService.dispose();
        privacyPolicy.dispose();
        signIn.dispose();
      };
    }, [termsOfService, privacyPolicy, signIn]);

    return AppScaffold(
      showAppBar: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v36.verticalSpacing,
          Text(
            "Let’s get\nyou started",
            style: context.textTheme.headlineMedium,
          ),
          Values.v32.verticalSpacing,
          PhoneTextField(controller: phoneNumber),
          Values.v16.verticalSpacing,
          _TermsAndPrivacyRichText(
            termsOfService: termsOfService,
            privacyPolicy: privacyPolicy,
          ),
          Values.v16.verticalSpacing,
          FilledButton(
            onPressed: () => context.router.push(OtpRoute()),
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
                    recognizer: signIn,
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontFamily: FontFamily.manrope,
                      color: ref.watch(appPrimaryProvider),
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

class _TermsAndPrivacyRichText extends ConsumerWidget {
  const _TermsAndPrivacyRichText({
    required this.termsOfService,
    required this.privacyPolicy,
  });

  final TapGestureRecognizer termsOfService;
  final TapGestureRecognizer privacyPolicy;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            recognizer: termsOfService,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.manrope,
              color: ref.watch(appPrimaryProvider),
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
            recognizer: privacyPolicy,
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: FontFamily.manrope,
              color: ref.watch(appPrimaryProvider),
            ),
          ),
        ],
      ),
    );
  }
}
