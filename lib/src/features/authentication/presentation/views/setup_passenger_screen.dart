import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/validators.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/authentication_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class SetupPassengerScreen extends HookConsumerWidget {
  const SetupPassengerScreen({super.key});

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
              onPressed: () => registerRider(
                ref,
                form.currentState!,
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

  void registerRider(
    WidgetRef ref,
    FormState form,
    String referralCode,
    String firstName,
    String lastName,
  ) {
    if (form.validate()) {
      if (referralCode.isNotEmpty) {
        ref
                .read(authControllerProvider.notifier)
                .payloadBuilder["referred_by"] =
            referralCode;
      }

      ref.read(authControllerProvider.notifier)
        ..payloadBuilder["first_name"] = firstName
        ..payloadBuilder["last_name"] = lastName;

      ref.read(appRouterProvider).push(CreatePasswordRoute());
    }
  }
}
