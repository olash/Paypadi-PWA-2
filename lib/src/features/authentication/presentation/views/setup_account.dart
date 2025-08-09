import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/enums.dart' show AccountRole;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class SetupAccountScreen extends HookConsumerWidget {
  const SetupAccountScreen({super.key, required this.role});

  final AccountRole role;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController firstName = useTextEditingController();
    final TextEditingController surname = useTextEditingController();
    final TextEditingController cabNumber = useTextEditingController();
    final TextEditingController referralCode = useTextEditingController();

    return AppScaffold(
      title: "",
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            40.0.verticalSpacing,
            Text(
              "Set up your account",
              style: context.textTheme.headlineMedium,
            ),
            16.0.verticalSpacing,
            Text(
              "Kindly provide the details below to help give you the best experience.",
              style: context.textTheme.bodyMedium,
            ),
            32.0.verticalSpacing,
            AppTextformfield(
              title: "First Name",
              hint: "Enter first name",
              controller: firstName,
            ),
            AppTextformfield(
              title: "Surname",
              hint: "Enter surname",
              controller: surname,
            ),
            if (role == AccountRole.driver)
              AppTextformfield(
                title: "Cab Number",
                hint: "Enter your cab number",
                controller: cabNumber,
              ),
            AppTextformfield(
              title: "Referral Code (Optional)",
              hint: "Enter referral code",
              controller: referralCode,
            ),
            24.0.verticalSpacing,
            FilledButton(
              onPressed: () => context.router.push(PasswordRoute()),
              child: Text("Submit"),
            ),
            8.0.verticalSpacing,
          ],
        ),
      ),
    );
  }
}
