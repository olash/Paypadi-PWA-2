import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/home/presentation/widgets/wallet_card.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/custom_appbar.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController amount = useTextEditingController();

    return AppScaffold(
      bgColor: AppColors.scaffoldBackground,
      appBar: CustomAppbar(name: "Abrrruham", profilePic: kDemoProfilePic),
      child: Column(
        children: [
          24.0.verticalSpacing,
          WalletCard(),
          24.0.verticalSpacing,
          //? Display typed numbers
          12.0.verticalSpacing,
          //? Display some fixed numbers
          // 28.0.verticalSpacing,
          AppKeypad(controller: amount),
          12.0.verticalSpacing,
          FilledButton.icon(
            onPressed: () {
              context.router.push(TransferRoute());
            },
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
    );
  }
}
