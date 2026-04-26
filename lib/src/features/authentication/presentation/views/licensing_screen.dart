import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/authentication/presentation/controller/authentication_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/app_textformfield.dart';

@RoutePage()
class LicensingScreen extends HookConsumerWidget {
  const LicensingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final driverLicense = useTextEditingController();
    final expiryDate = useTextEditingController();
    final GlobalKey<FormState> form = GlobalKey<FormState>();

    return AppScaffold(
      showAppBar: true,
      appBar: AppBar(
        title: Text(
          "Step 3 out of 5",
          style: context.textTheme.titleSmall,
        ),
        centerTitle: true,
      ),

      child: Form(
        key: form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Values.v32.verticalSpacing,
            Text(
              "Licensing",
              style: context.textTheme.headlineMedium,
            ),
            Values.v16.verticalSpacing,
            Text(
              "Kindly provide the details below to help give you the best experience.",
              style: context.textTheme.bodyMedium,
            ),
            Values.v32.verticalSpacing,
            AppTextformfield(
              title: "Driver's License",
              hint: "Enter your driver's license number",
              controller: driverLicense,
            ),
            AppTextformfield(
              title: "Expiry Date",
              hint: "dd/mm/yyyy",
              keyboardType: TextInputType.datetime,
              controller: expiryDate,
            ),

            Values.v24.verticalSpacing,
            FilledButton(
              onPressed: () => submit(
                ref,
                form.currentState!,
                driverLicense.text,
                expiryDate.text,
              ),
              child: Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }

  void submit(
    WidgetRef ref,
    FormState form,
    String driverLicense,
    String expiryDate,
  ) {
    // if (form.validate()) {
    //   ref.read(payloadBuilderProvider)
    //     ..["driver_license"] = driverLicense
    //     ..["expiry_date"] = expiryDate;

    //   ref.read(appRouterProvider).push(DocumentUploadRoute());
    // }

    ref.read(appRouterProvider).push(DocumentUploadRoute());
  }
}
