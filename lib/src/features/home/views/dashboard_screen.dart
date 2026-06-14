import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    final user = useState<UserModel?>(null);

    final amountController = useTextEditingController(text: '0');
    final amountValue = useValueListenable(amountController);

    // useEffect(() {
    //   final localCache = await ref.read(localCacheProvider.future);
    //   user.value = await localCache.get(
    //     CacheKeys.user,
    //     (raw) => UserModel.fromJson(raw as Map<String, dynamic>),
    //   );
    //   return null;
    // }, const []);

    return AppScaffold(
      showAppBar: false,
      leftPadding: Values.zero,
      rightPadding: Values.zero,
      appBar: CustomAppbar(name: user.value?.firstName),
      onRefresh: () => Future(
        () => ref.invalidate(walletControllerProvider),
      ),
      makeScrollable: true,
      child: Column(
        children: [
          Values.v32.verticalSpace,
          const UserWallet(),
          Values.v32.verticalSpace,
          AmountDisplay(controller: amountController),
          Values.v48.verticalSpace,
          AppKeypad(
            keyLength: 10,
            controller: amountController,
          ),
          Values.v36.verticalSpace,
          Row(
            spacing: Values.v12,
            children: [
              Flexible(
                child: FilledButton.icon(
                  onPressed: canTransfer(amountValue.text)
                      ? () => initializeTransferProcess(ref, amountValue.text)
                      : null,
                  label: const Text('Send Cash'),
                  iconAlignment: IconAlignment.end,
                  icon: const Icon(Icons.arrow_forward, size: 24),
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
                onTap: () =>
                    ref.read(appRouterProvider).push(const QrCodeRoute()),
                child: AppAssets.icons.icQrCode.svg(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void initializeTransferProcess(WidgetRef ref, String amount) {
    ref.read(transactionPayloadProvider)['amount'] = amount;
    ref.read(appRouterProvider).push(const TransferRoute());
  }

  bool canTransfer(String value) {
    if (value.trim().isEmpty) return false;

    final parsedAmount = num.tryParse(value.trim());
    if (parsedAmount == null) return false;

    return parsedAmount > 0;
  }
}
