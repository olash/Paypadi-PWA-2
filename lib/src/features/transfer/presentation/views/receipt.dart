import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class ReceiptScreen extends HookConsumerWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      child: Column(
        children: [],
      ),
    );
  }
}
