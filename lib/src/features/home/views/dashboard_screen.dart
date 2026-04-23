import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/user_model/user_model.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/features/home/controller/wallet_controller.dart';
import 'package:paypadi/src/features/home/widgets/amount_display.dart';
import 'package:paypadi/src/features/home/widgets/user_wallet.dart';
import 'package:paypadi/src/features/transfer/controller/transaction_controller.dart';
import 'package:paypadi/src/shared/widgets/app_keypad.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/custom_appbar.dart';

@RoutePage()
class DashboardScreen extends HookConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amount = useState<String>("0");

    final user = ref.watch(localCacheProvider).getFromCache<UserModel>(
      CacheKeys.user,
      (data) {
        final json = jsonDecode(data) as Map<String, dynamic>;
        return UserModel.fromJson(json);
      },
    );

    return AppScaffold(
      showAppBar: false,
      leftPadding: Values.zero,
      rightPadding: Values.zero,
      appBar: CustomAppbar(name: user?.firstName),
      onRefresh: () => Future(
        () => ref.invalidate(walletControllerProvider),
      ),
      makeScrollable: true,
      child: Column(
        children: [
          Values.v24.verticalSpacing,
          UserWallet(),
          Values.v24.verticalSpacing,
          AmountDisplay(
            amountEntered: amount.value,
            onAmountPressed: (selected) => amount.value = selected.toString(),
          ),
          Values.v32.verticalSpacing,
          AppKeypad(
            keyLength: 10,
            onChanged: (value) => amount.value = value,
          ),
          Values.v32.verticalSpacing,
          Row(
            spacing: Values.v12,
            children: [
              Flexible(
                child: FilledButton.icon(
                  onPressed: canTransfer(amount.value)
                      ? () => initializeTransferProcess(ref, amount.value)
                      : null,
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

  void initializeTransferProcess(WidgetRef ref, String amount) {
    ref.read(transactionControllerProvider.notifier).payloadBuilder["amount"] =
        amount;
    ref.read(appRouterProvider).push(TransferRoute());
  }

  bool canTransfer(String value) {
    if (value.trim().isEmpty) return false;

    final parsedAmount = num.tryParse(value.trim());
    if (parsedAmount == null) return false;

    return parsedAmount > 0;
  }
}
