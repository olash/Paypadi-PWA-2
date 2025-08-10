import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class LegalScreen extends HookConsumerWidget {
  LegalScreen({super.key});

  final TapGestureRecognizer resendCode = TapGestureRecognizer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    

    return AppScaffold(
      child: Column(
        children: [
          Text(
            "Good evening, ",
            style: context.textTheme.headlineMedium,
          ),

          24.0.verticalSpacing,

         
        ],
      ),
    );
  }
}
