import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';

@RoutePage()
class QrCodeScreen extends HookConsumerWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scanController = MobileScannerController();

    return AppScaffold(
      showAppBar: false,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CloseButton(),
              IconButton(
                onPressed: () async {
                  await scanController.toggleTorch();
                },
                icon: Icon(Icons.flash_on),
              ),
            ],
          ),
          Spacer(flex: 1),
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(Values.v24),
              child: MobileScanner(
                controller: scanController,
                scanWindow: Rect.fromLTWH(
                  context.screenWidth * .1,
                  context.screenHeight * .1,
                  context.screenWidth * .2,
                  context.screenHeight * .7,
                ),
                overlayBuilder: (context, constraints) {
                  return Container();
                },
                onDetect: (barcodes) {
                  debugLogger.debug(barcodes);
                },
              ),
            ),
          ),
          Text(
            "Scan QR code",
            style: context.textTheme.bodyMedium,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
