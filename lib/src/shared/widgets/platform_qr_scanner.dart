import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:paypadi/config/gen/colors.gen.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/platform_utils.dart';
import 'package:paypadi/src/features/home/controller/qr_code_controller.dart';

/// A platform-aware QR scanner.
///
/// - **Mobile**: Renders the native [MobileScanner] camera view.
/// - **Web**: Renders a text field that accepts a pasted/typed QR code value,
///   with an explanation that camera scanning requires the mobile app.
///   This matches the user's decision to provide a manual override path.
class PlatformQrScannerView extends ConsumerWidget {
  const PlatformQrScannerView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (supportsNativeCamera) {
      return _NativeScannerView(ref: ref);
    }
    return const _WebManualInputView();
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Mobile: native camera scanner
// ─────────────────────────────────────────────────────────────────────────────

class _NativeScannerView extends StatelessWidget {
  const _NativeScannerView({required this.ref});
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final controller = ref
        .watch(qrCodeControllerProvider.notifier)
        .scannerController;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: context.screenWidth * .8,
            maxHeight: context.screenHeight * .35,
          ),
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(Values.v24),
            child: MobileScanner(controller: controller),
          ),
        ),
        Values.v12.verticalSpace,
        Text('Scan QR code', style: context.textTheme.bodyMedium),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Web: manual code entry (primary path) with camera unavailability notice
// ─────────────────────────────────────────────────────────────────────────────

class _WebManualInputView extends StatefulWidget {
  const _WebManualInputView();

  @override
  State<_WebManualInputView> createState() => _WebManualInputViewState();
}

class _WebManualInputViewState extends State<_WebManualInputView> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Pass the scanned value to the QrCodeController just as the
      // native scanner would via BarcodeCapture. Wire this up when the
      // QrCodeController exposes a handleManualCode() method.
      debugPrint('Web QR manual input: ${_controller.text.trim()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Values.v24.w),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Web Notice ────────────────────────────────────────────────
            Container(
              padding: const EdgeInsets.all(Values.v12),
              decoration: BoxDecoration(
                color: AppColors.referralCardColor,
                borderRadius: BorderRadius.circular(Values.v8),
                border: Border.all(color: AppColors.primary.withOpacity(0.2)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.info_outline_rounded,
                    size: Values.v16,
                    color: AppColors.primary,
                  ),
                  Values.v8.horizontalSpace,
                  Expanded(
                    child: Text(
                      'Camera scanning is available on the PayPadi mobile app. '
                      'Paste or type the payment code below to continue.',
                      style: context.textTheme.bodySmall?.copyWith(
                        color: AppColors.primary,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Values.v20.verticalSpace,

            // ── Manual Code Input ─────────────────────────────────────────
            Text(
              'Enter payment code',
              style: context.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.walletCardTextColor,
              ),
            ),
            Values.v8.verticalSpace,
            TextFormField(
              controller: _controller,
              autofocus: true,
              textInputAction: TextInputAction.done,
              onFieldSubmitted: (_) => _onSubmit(),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter or paste a payment code';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Paste or type code here',
                prefixIcon: Icon(Icons.qr_code_rounded),
              ),
            ),

            Values.v16.verticalSpace,

            // ── Submit Button ─────────────────────────────────────────────
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: _onSubmit,
                icon: const Icon(Icons.check_rounded, size: Values.v18),
                label: const Text('Confirm code'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
