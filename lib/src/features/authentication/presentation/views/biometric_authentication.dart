import 'dart:io' show Platform;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/config/service_registry/service_registry.dart'
    show appRouterProvider, localCacheProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class BiometricAuthenticationScreen extends HookConsumerWidget {
  const BiometricAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      bottomPadding: Values.v32,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v32.verticalSpacing,
          SizedBox(
            width: Values.v84,
            height: Values.v84,
            child: Platform.isIOS
                ? AppAssets.icons.faceId.svg()
                : AppAssets.icons.fingerprint.svg(),
          ),
          Values.v24.verticalSpacing,
          Text(
            Platform.isIOS ? "Enable Face ID" : "Enable Fingerprint",
            style: context.textTheme.headlineMedium,
          ),
          Values.v16.verticalSpacing,
          Text(
            Platform.isIOS
                ? "Use face recognition for a faster and more secure access."
                : "Use fingerprint for a faster and more secure access.",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Row(
            spacing: Values.v8,
            children: [
              Flexible(
                child: OutlinedButton(
                  onPressed: () {
                    ref.read(appRouterProvider).replaceAll([LoginRoute()]);
                  },
                  child: Text("Maybe Later"),
                ),
              ),
              Flexible(
                child: FilledButton(
                  onPressed: () async {
                    await ref
                        .read(localCacheProvider)
                        .saveToCache(
                          key: CacheKeys.enabledBiometrics,
                          value: true,
                        );
                    ref.read(appRouterProvider).replaceAll([LoginRoute()]);
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
