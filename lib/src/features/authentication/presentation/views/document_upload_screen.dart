import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart' show Values;
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class DocumentUploadScreen extends HookConsumerWidget {
  const DocumentUploadScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = useRef(GlobalKey<FormState>());

    return AppScaffold(
      showAppBar: true,
      appBar: AppBar(
        title: Text(
          "Step 4 out of 5",
          style: context.textTheme.titleSmall,
        ),
        centerTitle: true,
      ),

      child: Form(
        key: form.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Values.v32.verticalSpacing,
            Text(
              "Document Upload",
              style: context.textTheme.headlineMedium,
            ),
            Values.v16.verticalSpacing,
            Text(
              "Kindly upload the documents needed to help give you the best experience.",
              style: context.textTheme.bodyMedium,
            ),
            Values.v32.verticalSpacing,

            FilledButton(
              onPressed: () => submit(ref, form.value),
              child: Text("Continue"),
            ),
          ],
        ),
      ),
    );
  }

  void submit(WidgetRef ref, GlobalKey<FormState> form) {
    // if (form.validate()) {
    //   ref.read(appRouterProvider).push(PayoutAccountRoute());
    // }

    ref.read(appRouterProvider).push(PayoutAccountRoute());
  }
}
