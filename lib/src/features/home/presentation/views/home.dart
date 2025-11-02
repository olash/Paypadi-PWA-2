import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ClipboardData, Clipboard;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart' show Iconsax, Clarity;
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/services/service_registry.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart' show formatAmount;
import 'package:paypadi/src/features/home/presentation/widgets/amount_display.dart';
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
      leftPadding: 0,
      rightPadding: 0,
      appBar: CustomAppbar(name: "Abrrruham", profilePic: kDemoProfilePic),
      child: Column(
        children: [
          Values.v12.verticalSpacing,
          _WalletCard(),
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
    );
  }
}

class _WalletCard extends HookConsumerWidget {
  const _WalletCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hideBalance = useState<bool>(true);

    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Available Balance",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.walletCardTextColor,
                ),
              ),
              IconButton(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                color: AppColors.walletCardIconColor,
                onPressed: () => hideBalance.value = !hideBalance.value,
                icon: Icon(
                  hideBalance.value
                      ? Iconsax.eye_slash_outline
                      : Iconsax.eye_outline,
                ),
              ),
            ],
          ),
          Text(
            hideBalance.value ? "₦******" : "₦${formatAmount(50000)}",
            style: context.textTheme.headlineSmall,
          ),
          Row(
            children: [
              Text(
                "Account no: ${123456789}",
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.walletCardTextColor,
                ),
              ),
              IconButton(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                color: AppColors.walletCardIconColor,
                onPressed: () async {
                  await Clipboard.setData(
                    ClipboardData(text: "Data"),
                  );
                },
                icon: Icon(Clarity.copy_line),
              ),
            ],
          ),

          Row(
            children: [
              FilledButton.icon(
                onPressed:
                    () => ref.read(appRouterProvider).push(AddMoneyRoute()),
                label: Text("Add Money"),
                icon: Icon(Iconsax.add_outline, size: 24),
                style: context.filledButtonTheme.style?.copyWith(
                  fixedSize: WidgetStatePropertyAll(kButtonSmallSize),
                  foregroundColor: WidgetStatePropertyAll(
                    ref.watch(appPrimaryProvider),
                  ),
                  backgroundColor: WidgetStatePropertyAll(
                    ref.watch(appPrimaryProvider).withAlpha(20),
                  ),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 12),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(color: ref.watch(appPrimaryProvider)),
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                  ),
                  textStyle: WidgetStatePropertyAll(
                    context.textTheme.bodySmall?.copyWith(
                      letterSpacing: -0.08,
                      fontWeight: FontWeight.w600,
                      color: ref.watch(appPrimaryProvider),
                    ),
                  ),
                ),
              ),
              // ...[
              //   Expanded(
              //     child: FilledButton.icon(
              //       onPressed: () {},
              //       icon: Icon(Iconsax.add_outline, size: 24),
              //       label: Text("Add Money"),
              //       style: context.filledButtonTheme.style?.copyWith(
              //         fixedSize: WidgetStatePropertyAll(Size(125, 32)),
              //         padding: WidgetStatePropertyAll(
              //           EdgeInsets.symmetric(horizontal: 12),
              //         ),
              //         textStyle: WidgetStatePropertyAll(
              //           context.textTheme.bodySmall?.copyWith(
              //             letterSpacing: -0.08,
              //             fontWeight: FontWeight.w600,
              //             color: AppColors.primary,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // 10.0.verticalSpacing,
              //   Expanded(
              //     child: FilledButton.icon(
              //       onPressed: () {},
              //       label: Text("Withdraw"),
              //       icon: Icon(Iconsax.bank_outline),
              //       style: context.filledButtonTheme.style?.copyWith(
              //         fixedSize: WidgetStatePropertyAll(Size(125, 32)),
              //         foregroundColor: WidgetStatePropertyAll(
              //           AppColors.primary,
              //         ),
              //         backgroundColor: WidgetStatePropertyAll(
              //           AppColors.walletCardButtonColor,
              //         ),
              //         padding: WidgetStatePropertyAll(
              //           EdgeInsets.symmetric(horizontal: 12),
              //         ),
              //         shape: WidgetStatePropertyAll(
              //           RoundedRectangleBorder(
              //             side: BorderSide(color: AppColors.primary),
              //             borderRadius: BorderRadiusGeometry.circular(12),
              //           ),
              //         ),
              //         textStyle: WidgetStatePropertyAll(
              //           context.textTheme.bodySmall?.copyWith(
              //             letterSpacing: -0.08,
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ],
            ],
          ),
        ],
      ),
    );
  }
}
