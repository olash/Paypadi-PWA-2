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
class VehicleInformationScreen extends HookConsumerWidget {
  const VehicleInformationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carMake = useTextEditingController();
    final carModel = useTextEditingController();
    final productionYear = useTextEditingController();
    final licensePlate = useTextEditingController();
    final GlobalKey<FormState> form = GlobalKey<FormState>();

    return AppScaffold(
      showAppBar: true,
      appBar: AppBar(
        title: Text(
          "Step 2 out of 5",
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
              "Vehicle Information",
              style: context.textTheme.headlineMedium,
            ),
            Values.v16.verticalSpacing,

            Text(
              "Kindly provide the details below to help give you the best experience.",
              style: context.textTheme.bodyMedium,
            ),
            Values.v32.verticalSpacing,
            AppTextformfield(
              title: "Car Make",
              hint: "Enter your car make",
              controller: carMake,
            ),
            AppTextformfield(
              title: "Car Model",
              hint: "Enter your car model",
              controller: carModel,
            ),
            AppTextformfield(
              title: "Year of Production",
              hint: "Enter your car's year of production",
              keyboardType: TextInputType.number,
              controller: productionYear,
            ),
            AppTextformfield(
              title: "License Plate",
              hint: "Enter your license plate",
              controller: licensePlate,
            ),
            Values.v24.verticalSpacing,
            FilledButton(
              onPressed: () => submit(
                ref,
                form.currentState!,
                carMake.text,
                carModel.text,
                productionYear.text,
                licensePlate.text,
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
    String carMake,
    String carModel,
    String productionYear,
    String licensePlate,
  ) {
    // if (form.validate()) {
    //   if (productionYear.isNotEmpty) {
    //     ref.read(payloadBuilderProvider)["year_of_production"] = productionYear;
    //   }

    //   ref.read(payloadBuilderProvider)
    //     ..["car_make"] = carMake
    //     ..["car_model"] = carModel
    //     ..["license_plate"] = productionYear;

    //   ref.read(appRouterProvider).push(LicensingRoute());
    // }

    ref.read(appRouterProvider).push(LicensingRoute());
  }
}
