import 'dart:io' show Platform;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/services/service_registry.dart'
    show appRouterProvider, localCacheProvider;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class LocalAuthenticationScreen extends HookConsumerWidget {
  const LocalAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      title: "",
      bottomPadding: Values.v24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Values.v24.verticalSpacing,
          
          if (Platform.isIOS)
            AppAssets.icons.faceId.svg()
          else
            Icon(IonIcons.finger_print, size: Values.v84),
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
            spacing: 8,
            children: [
              Flexible(
                child: OutlinedButton(
                  onPressed:
                      () => ref.read(appRouterProvider).replaceAll([
                        LoginRoute(),
                      ]),
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
