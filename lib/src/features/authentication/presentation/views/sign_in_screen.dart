import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/validators.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formRef = useRef(GlobalKey<FormState>());
    final phoneNumber = useTextEditingController();

    return AppScaffold(
      showAppBar: true,
      child: Form(
        key: formRef.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(
              "Welcome back",
              style: context.textTheme.headlineMedium,
            ),
            Values.v16.verticalSpacing,
            Text(
              "Enter the Phone Number associated with your Paypadi account",
              style: context.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            Values.v16.verticalSpacing,
            PhoneTextField(
              controller: phoneNumber,
              validator: (number) => phoneNumberValidator(number),
            ),
            Values.v16.verticalSpacing,
            FilledButton(
              onPressed: () => signin(ref, phoneNumber.text, formRef.value),
              child: Text("Continue"),
            ),
            Spacer(flex: 6),
          ],
        ),
      ),
    );
  }

  void signin(
    WidgetRef ref,
    String phoneNumber,
    GlobalKey<FormState> form,
  ) {
    if (form.currentState!.validate()) {
      ref
          .read(appRouterProvider)
          .push(EnterPasswordRoute(phoneNumber: phoneNumber));
    }
  }
}
