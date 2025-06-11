import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/services/biometrics_service.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class LocalAuthenticationScreen extends HookConsumerWidget {
  const LocalAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final biometricService = ref.watch(biometricsProvider);

    return AppScaffold(
      title: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          24.0.verticalSpacing,
          Icon(
            biometricService.deviceIsIos
                ? Iconsax.bill_outline
                : IonIcons.finger_print,
            size: 81,
          ),
          24.0.verticalSpacing,
          Text(
            biometricService.deviceIsIos
                ? "Enable Face ID"
                : "Enable Fingerprint",
            style: context.textTheme.headlineMedium,
          ),
          16.0.verticalSpacing,
          Text(
            biometricService.deviceIsIos
                ? "Use face recognition for a faster and more secure access."
                : "Use fingerprint for a faster and more secure access.",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Row(
            spacing: 8,
            children: [
              Flexible(
                child: OutlinedButton(
                  onPressed: () {
                    context.router.push(AppBottomBavBarRoute());
                  },
                  child: Text("Maybe Later"),
                ),
              ),

              Flexible(
                child: FilledButton(
                  onPressed: () async {
                    await biometricService.authenticate();
                  },
                  child: Text("Enable"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
