import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/service_registry/service_registry.dart';
import 'package:paypadi/core/utils/constants.dart' show Values, diLocator;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/validators.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class SetupPassengerAccountScreen extends HookConsumerWidget {
  const SetupPassengerAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController firstName = useTextEditingController();
    final TextEditingController lastName = useTextEditingController();
    final TextEditingController referralCode = useTextEditingController();
    final GlobalKey<FormState> form = GlobalKey<FormState>();

    return AppScaffold(
      showAppBar: true,
      makeScrollable: true,
      child: Form(
        key: form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Values.v32.verticalSpacing,
            Text(
              "Set up your account",
              style: context.textTheme.headlineMedium,
            ),
            Values.v16.verticalSpacing,
            Text(
              "Kindly provide the details below to help give you the best experience.",
              style: context.textTheme.bodyLarge?.copyWith(
                color: AppColors.grey600,
                fontWeight: FontWeight.w400,
              ),
            ),
            Values.v32.verticalSpacing,
            AppTextformfield(
              title: "First Name",
              hint: "Enter first name",
              controller: firstName,
              validator: (firstname) => nameValidator(firstname),
            ),
            AppTextformfield(
              title: "Surname",
              hint: "Enter surname",
              controller: lastName,
              validator: (surname) => nameValidator(surname),
            ),
            AppTextformfield(
              title: "Referral Code (Optional)",
              hint: "Enter referral code",
              controller: referralCode,
            ),
            Values.v24.verticalSpacing,
            FilledButton(
              onPressed: () => submit(
                ref,
                form,
                referralCode.text,
                firstName.text,
                lastName.text,
              ),
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }

  void submit(
    WidgetRef ref,
    GlobalKey<FormState> form,
    String referralCode,
    String firstName,
    String lastName,
  ) {
    if (form.currentState!.validate()) {
      if (referralCode.isNotEmpty) {
        diLocator.get<RegisterUserPayloadBuilder>().referredBy(referralCode);
      }

      diLocator.get<RegisterUserPayloadBuilder>()
        ..firstName(firstName)
        ..lastName(lastName);

      ref.read(appRouterProvider).push(PasswordRoute());
    }
  }
}
