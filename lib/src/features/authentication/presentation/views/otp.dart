import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/services/service_registry.dart'
    show appPrimaryColorProvider, appRouterProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/authentication/presentation/widgets/pincode_field.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class OtpScreen extends HookConsumerWidget {
  OtpScreen({super.key});

  final TapGestureRecognizer resendCode = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pinCode = useTextEditingController();

    return AppScaffold(
      showAppBar: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v32.verticalSpacing,
          Text("OTP\nverification", style: context.textTheme.headlineMedium),
          Values.v16.verticalSpacing,
          Text(
            "Kindly provide the verification code sent to your ${obfuscatePhoneNumber("+2348134726507")}",
            style: context.textTheme.bodyMedium,
          ),
          Values.v24.verticalSpacing,
          Form(
            child: Center(
              child: PinCodeField(controller: pinCode),
            ),
          ),
          Values.v12.verticalSpacing,
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
                      color: ref.watch(appPrimaryColorProvider),
                      decoration: TextDecoration.underline,
                      decorationColor: ref.watch(appPrimaryColorProvider),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Values.v24.verticalSpacing,
          FilledButton(
            onPressed: () => verifyAccount(ref),
            child: Text("Verify"),
          ),
        ],
      ),
    );
  }

  void verifyAccount(WidgetRef ref) {
    ref.read(appRouterProvider).push(AccountRoleRoute());
  }
}
