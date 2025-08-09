import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/home/presentation/widgets/amount_display.dart';
import 'package:paypadi/src/features/home/presentation/widgets/wallet_card.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/custom_appbar.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amount = useState<String>("");

    return AppScaffold(
      appBar: CustomAppbar(name: "Abrrruham", profilePic: kDemoProfilePic),
      child: SingleChildScrollView(
        child: Column(
          children: [
            useSpaceOf24.verticalSpacing,
            WalletCard(),
            useSpaceOf24.verticalSpacing,
            AmountDisplay(input: amount.value),
            useSpaceOf28.verticalSpacing,
            AppKeypad(
              pinLength: 10,
              onChanged: (value) {
                amount.value = value;
              },
            ),
            useSpaceOf12.verticalSpacing,
            FilledButton.icon(
              onPressed: () => ref.read(appRouterProvider).push(TransferRoute()),
              label: Text("Send Cash"),
              iconAlignment: IconAlignment.end,
              icon: Icon(Icons.arrow_forward, size: 24),
              style: context.filledButtonTheme.style?.copyWith(
                textStyle: WidgetStatePropertyAll(
                  context.textTheme.bodyLarge?.copyWith(
                    letterSpacing: -0.43,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
