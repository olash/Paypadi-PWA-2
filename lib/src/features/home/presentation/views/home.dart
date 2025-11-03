import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ClipboardData, Clipboard;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart' show Iconsax, Clarity;
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart' show formatAmount;
import 'package:paypadi/src/features/home/presentation/widgets/amount_display.dart';
import 'package:paypadi/src/features/home/presentation/widgets/user_wallet.dart';
import 'package:paypadi/src/shared/widgets/app_card.dart';
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
      showAppBar: false,
      makeScrollable: true,
      leftPadding: Values.zero,
      rightPadding: Values.zero,
      appBar: CustomAppbar(name: "Abrrruham", profilePic: kDemoProfilePic),
      child: Column(
        children: [
          Values.v24.verticalSpacing,
          UserWallet(),
          Values.v12.verticalSpacing,
          AmountDisplay(
            amountEntered: int.tryParse(amount.value) ?? 0,
            onAmountPressed: (selected) => amount.value = selected.toString(),
          ),
          Values.v14.verticalSpacing,
          AppKeypad(
            pinLength: 10,
            onChanged: (value) => amount.value = value,
          ),
          Values.v12.verticalSpacing,
          Row(
            spacing: Values.v12,
            children: [
              Flexible(
                child: FilledButton.icon(
                  onPressed: () =>
                      ref.read(appRouterProvider).push(TransferRoute()),
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
              ),
              GestureDetector(
                onTap: () => ref.read(appRouterProvider).push(QrCodeRoute()),
                child: AppAssets.icons.qrCode.svg(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
