import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart'
    show appPrimaryColorProvider;
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/authentication_controller.dart';
import 'package:paypadi/src/features/authentication/presentation/widgets/pincode_field.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class OtpScreen extends HookConsumerWidget {
  OtpScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TapGestureRecognizer resendCode = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final otpCode = useTextEditingController();
    final phoneNumber = ref.watch(payloadBuilderProvider)["phone_number"];

    ref.listen(authControllerProvider, (previous, current) {
      current.when(
        data: (d) {
          ref.dismissLoading();
          otpCode.clear();
        },
        error: (e, st) {
          ref.dismissLoading();
          ref.showExceptionMessage(e, st);
          otpCode.clear();
        },
        loading: () => ref.showLoading(),
      );
    });

    return AppScaffold(
      showAppBar: true,
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Values.v32.verticalSpacing,
            Text(
              "OTP\nverification",
              style: context.textTheme.headlineMedium,
            ),
            Values.v16.verticalSpacing,
            Text(
              "Kindly provide the verification code "
              "sent to your ${obfuscatePhoneNumber(phoneNumber)}",
              style: context.textTheme.bodyLarge,
            ),
            Values.v24.verticalSpacing,
            Center(
              child: PinCodeField(controller: otpCode),
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
              onPressed: () => verifyOtp(ref, otpCode.text),
              child: Text("Verify"),
            ),
          ],
        ),
      ),
    );
  }

  void verifyOtp(WidgetRef ref, String otpCode) async {
    if (formKey.currentState!.validate()) {
      await ref.read(authControllerProvider.notifier).verifyOtpCode(otpCode);
    }
  }
}
