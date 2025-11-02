import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart' show CacheKeys, Values;
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';
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

    return AppScaffold(
      showAppBar: true,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            ),
            AppTextformfield(
              title: "Surname",
              hint: "Enter surname",
              controller: surname,
            ),

            AppTextformfield(
              title: "Cab Number",
              hint: "Enter your cab number",
              controller: cabNumber,
            ),
            AppTextformfield(
              title: "Driver's License",
              hint: "Enter your driver’s license",
              controller: license,
            ),
            AppTextformfield(
              title: "Plate Number",
              hint: "Enter your plate number",
              controller: plateNumber,
            ),
            AppTextformfield(
              title: "Referral Code (Optional)",
              hint: "Enter referral code",
              controller: referralCode,
            ),
            Values.v24.verticalSpacing,
            FilledButton(
              onPressed: () => submit(ref),
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }

  void submit(WidgetRef ref) {
    ref
        .read(appRouterProvider)
        .push(
          PasswordRoute(
            onSubmit: (password) => _passwordRouteOnSubmit(ref, password),
          ),
        );
  }

  void _passwordRouteOnSubmit(WidgetRef ref, String password) {
    ref
        .read(appRouterProvider)
        .push(
          ConfirmPasswordRoute(
            onSubmit: (confirmPassword) => _confirmPasswordRouteOnSubmit(
              ref,
              password,
              confirmPassword,
            ),
          ),
        );
  }

  void _confirmPasswordRouteOnSubmit(
    WidgetRef ref,
    String password,
    String confirmPassword,
  ) {
    if (password == confirmPassword) {
      ref
          .read(secureCacheProvider)
          .write(key: CacheKeys.loginPin, value: confirmPassword);
      ref
          .read(appRouterProvider)
          .push(
            TransactionPinRoute(
              onSubmit: (transactionPin) =>
                  _transactionPinRouteOnSubmit(ref, transactionPin),
            ),
          );
    }
  }

  void _transactionPinRouteOnSubmit(WidgetRef ref, String pin) {
    ref
        .read(appRouterProvider)
        .push(
          ConfirmTransactionPinRoute(
            onSubmit: (confirmTransactionPin) =>
                _confirmTransactionPinRouteOnSubmit(
                  ref,
                  pin,
                  confirmTransactionPin,
                ),
          ),
        );
  }

  void _confirmTransactionPinRouteOnSubmit(
    WidgetRef ref,
    String pin,
    String confirmedPin,
  ) {
    if (pin == confirmedPin) {
      ref
          .read(secureCacheProvider)
          .write(key: CacheKeys.transactionPin, value: confirmedPin);
      ref.read(appRouterProvider).push(BiometricAuthenticationRoute());
    }
  }
}
