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

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enable Face ID",
            style: context.textTheme.headlineMedium,
          ),
          16.0.verticalSpacing,
          Text(
            "Use face recognition for a faster and more secure access.",
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
                  onPressed: () {},
                  child: Text(
                    "Maybe Later",
                  ),
                ),
              ),

              Flexible(
                child: FilledButton(
                  onPressed: () {},
                  child: Text(
                    "Enable",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
