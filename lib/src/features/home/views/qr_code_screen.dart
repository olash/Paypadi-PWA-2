import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/platform_utils.dart';
import 'package:paypadi/src/features/home/controller/qr_code_controller.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:paypadi/src/shared/widgets/platform_qr_scanner.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

@RoutePage()
class QrCodeScreen extends HookConsumerWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScanning = useState<bool>(false);

    return AppScaffold(
      showAppBar: false,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CloseButton(),
              if (isScanning.value && supportsNativeCamera)
                IconButton(
                  onPressed: ref
                      .read(qrCodeControllerProvider.notifier)
                      .toggleTorch,
                  icon: const Icon(Icons.flashlight_on_outlined),
                )
              else
                IconButton(
                  onPressed: () {},
                  icon: AppAssets.icons.icShare.svg(),
                ),
            ],
          ),
          const Spacer(),
          Center(
            child: AnimatedSwitcher(
              duration: Durations.medium2,
              child: isScanning.value ? const _ScanQrCode() : _GenerateQrCode(),
            ),
          ),
          const Spacer(),
          _ScanPageActions(inScanMode: isScanning),
          Values.v32.verticalSpace,
        ],
      ),
    );
  }
}

class _ScanPageActions extends StatelessWidget {
  const _ScanPageActions({required this.inScanMode});
  final ValueNotifier<bool> inScanMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey50,
        border: BoxBorder.all(color: AppColors.grey200),
        borderRadius: BorderRadius.circular(Values.v8),
      ),
      child: ValueListenableBuilder(
        valueListenable: inScanMode,
        builder: (context, scanValue, _) {
          return Row(
            mainAxisSize: .min,
            children: [
              GestureDetector(
                onTap: () => inScanMode.value = true,
                child: AnimatedContainer(
                  duration: Durations.long4,
                  padding: const EdgeInsets.symmetric(
                    vertical: Values.v12,
                    horizontal: Values.v36,
                  ),
                  decoration: BoxDecoration(
                    color: scanValue ? AppColors.white : AppColors.grey50,
                    borderRadius: BorderRadius.circular(Values.v8),
                    border: scanValue
                        ? BoxBorder.all(color: AppColors.grey300)
                        : null,
                  ),
                  child: Text('Scan', style: context.textTheme.bodyMedium),
                ),
              ),
              GestureDetector(
                onTap: () => inScanMode.value = false,
                child: AnimatedContainer(
                  duration: Durations.long4,
                  padding: const EdgeInsets.symmetric(
                    vertical: Values.v12,
                    horizontal: Values.v36,
                  ),
                  decoration: BoxDecoration(
                    color: !scanValue ? AppColors.white : AppColors.grey50,
                    borderRadius: BorderRadius.circular(Values.v8),
                    border: !scanValue
                        ? BoxBorder.all(color: AppColors.grey300)
                        : null,
                  ),
                  child: Text('My code', style: context.textTheme.bodyMedium),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ScanQrCode extends ConsumerWidget {
  const _ScanQrCode();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Delegates to PlatformQrScannerView which handles both mobile (native
    // camera) and web (manual text input) cases.
    return const PlatformQrScannerView();
  }
}

class _GenerateQrCode extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        PrettyQrView.data(
          data: 'I am a boy',
          decoration: PrettyQrDecoration(
            image: PrettyQrDecorationImage(
              image: AppAssets.images.appLogo.provider(),
            ),
          ),
        ),
        Text(
          'name',
          style: context.textTheme.bodyMedium,
        ),
        Text(
          'Scan to pay',
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
