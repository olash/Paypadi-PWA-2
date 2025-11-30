import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/validators.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class SetupDriverAccountScreen extends HookConsumerWidget {
  const SetupDriverAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstName = useTextEditingController();
    final surname = useTextEditingController();
    final cabNumber = useTextEditingController();
    final license = useTextEditingController();
    final plateNumber = useTextEditingController();
    final referralCode = useTextEditingController();
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
              style: context.textTheme.bodyMedium,
            ),
            Values.v32.verticalSpacing,
            AppTextformfield(
              title: "First Name",
              hint: "Enter first name",
              controller: firstName,
              validator: (firstName) => nameValidator(firstName),
            ),
            AppTextformfield(
              title: "Surname",
              hint: "Enter surname",
              controller: surname,
              validator: (firstName) => nameValidator(firstName),
            ),

            AppTextformfield(
              title: "Cab Number",
              hint: "Enter your cab number",
              controller: cabNumber,
              keyboardType: TextInputType.number,
              validator: (cabNumber) => requiredValidator(cabNumber),
            ),
            AppTextformfield(
              title: "Driver's License",
              hint: "Enter your driver’s license",
              controller: license,
              validator: (license) => requiredValidator(license),
            ),
            AppTextformfield(
              title: "Plate Number",
              hint: "Enter your plate number",
              controller: plateNumber,
              validator: (plateNo) => plateNumberValidator(plateNo),
            ),
            AppTextformfield(
              title: "Referral Code (Optional)",
              hint: "Enter referral code",
              controller: referralCode,
            ),
            Values.v24.verticalSpacing,
            FilledButton(
              onPressed: () => submit(ref, form.currentState!),
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }

  void submit(WidgetRef ref, FormState form) {
    if (form.validate()) {
      ref.read(appRouterProvider).push(DriverPayoutRoute());
    }
  }
}
