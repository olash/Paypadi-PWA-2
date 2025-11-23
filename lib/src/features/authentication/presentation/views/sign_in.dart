import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/service_registry/service_registry.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/core/utils/validators.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/authentication_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';
import 'package:paypadi/src/shared/widgets/loading_indicator.dart';

@RoutePage()
class SignInScreen extends HookConsumerWidget {
  SignInScreen({super.key});
  final GlobalKey<FormState> form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneNumber = useTextEditingController();

    ref.listen(authControllerProvider, (_, state) {
      state.when(
        data: (d) {
          dismissLoadingOverlay(context);
          ref.read(appRouterProvider).push(PasswordRoute());
        },
        error: (e, st) {
          dismissLoadingOverlay(context);
          showErrorDialog(context, message: e.toString());
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
              onPressed: () => signin(ref, phoneNumber.text, form),
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
      // ref.read(authControllerProvider.notifier).requestForOtp(phoneNumber);
    }
  }
}
