import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:icons_plus/icons_plus.dart';

class WalletCard extends HookConsumerWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hideBalance = useState<bool>(true);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0.05),
            color: AppColors.black.withValues(alpha: .25),
            blurRadius: 4,
          ),
        ],
      ),
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
            hideBalance.value ? "₦******" : "₦500,000",
            style: context.textTheme.headlineSmall,
          ),
          Row(
            children: [
              Text(
                "Account no: ",
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
                onPressed: () {},
                label: Text("Add Money"),
                icon: Icon(Iconsax.add_outline, size: 24),
                style: context.filledButtonTheme.style?.copyWith(
                  fixedSize: WidgetStatePropertyAll(Size(125.sW, 32.sH)),
                  foregroundColor: WidgetStatePropertyAll(AppColors.primary),
                  backgroundColor: WidgetStatePropertyAll(
                    AppColors.smallButtonColor,
                  ),
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 12),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.primary),
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                  ),
                  textStyle: WidgetStatePropertyAll(
                    context.textTheme.bodySmall?.copyWith(
                      letterSpacing: -0.08,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
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
