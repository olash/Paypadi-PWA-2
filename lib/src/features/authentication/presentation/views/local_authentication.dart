import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class LocalAuthenticationScreen extends HookConsumerWidget {
  const LocalAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      appBarTitle: "",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Create a Transaction PIN",
            style: context.textTheme.headlineMedium,
          ),
          16.0.verticalSpacing,
          Text(
            "Set a secure password for your account",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          32.0.verticalSpacing,

        ],
      ),
    );
  }
}
