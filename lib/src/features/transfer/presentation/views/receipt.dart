import 'dart:io' show Directory;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_to_pdf/flutter_to_pdf.dart'
    show ExportDelegate, ExportFrame, PageFormatOptions, ExportOptions;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart'
    show ImageGallerySaverPlus;
import 'package:path_provider/path_provider.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/services/service_registry.dart';

import 'package:screenshot/screenshot.dart';
import 'package:paypadi/config/gen/colors.gen.dart' show AppColors;
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/transfer/presentation/widgets/dotted_line.dart';
import 'package:paypadi/src/features/transfer/presentation/widgets/payment_details.dart';
import 'package:paypadi/src/features/transfer/presentation/widgets/receipt_card.dart';
import 'package:paypadi/src/shared/widgets/app_scaffold.dart';
import 'package:share_plus/share_plus.dart';

@RoutePage()
class ReceiptScreen extends HookConsumerWidget {
  ReceiptScreen({super.key});

  final ScreenshotController screenshotController = ScreenshotController();
  final ExportDelegate exportDelegate = ExportDelegate(
    options: ExportOptions(pageFormatOptions: PageFormatOptions.a4()),
    ttfFonts: {"Poppins": "fonts/Poppins-Regular.ttf"},
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double pixelRatio = context.devicePixelRatio;
    final paymentStatus = useState<PaymentStatus>(PaymentStatus.success);

    return AppScaffold(
      showAppBar: false,
      bgColor: AppColors.scaffoldBackground,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CloseButton(
                onPressed:
                    () => ref
                        .read(appRouterProvider)
                        .popUntilRouteWithName(AppBottomNavBarRoute.name),
              ),
              IconButton(
                onPressed: () async => await _shareReceipt(pixelRatio),
                icon: Icon(OctIcons.share),
              ),
            ],
          ),
          Values.v16.verticalSpacing,
          Screenshot(
            controller: screenshotController,
            child: ExportFrame(
              frameId: "receipt",
              exportDelegate: exportDelegate,
              child: ReceiptCard(
                child: Column(
                  children: [
                    _PaymentDetailsStatusIcon(status: paymentStatus.value),
                    Values.v16.verticalSpacing,
                    Text(
                      "Payment ${capitalizeFirstChar(paymentStatus.value.name)}!",
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w400,
                        letterSpacing: kZeroLetterSpacing,
                      ),
                    ),
                    Values.v8.verticalSpacing,
                    Text(
                      "₦1,000,000",
                      style: context.textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        letterSpacing: kZeroLetterSpacing,
                      ),
                    ),
                    Values.v32.verticalSpacing,
                    Divider(
                      indent: 8,
                      endIndent: 8,
                      color: AppColors.dividerColor,
                    ),
                    Values.v32.verticalSpacing,
                    PaymentDetails(
                      detail: "Ref Number",
                      value: "enfioejnfowse",
                    ),
                    PaymentDetails(
                      detail: "Payment Time",
                      value: "enfioejnfowse",
                    ),
                    PaymentDetails(
                      detail: "Payment Method",
                      value: "enfioejnfowse",
                    ),
                    PaymentDetails(
                      detail: "Sender Name",
                      value: "enfioejnfowse",
                    ),
                    PaymentDetails(
                      detail: "Receiver Name",
                      value: "enfioejnfowse",
                    ),
                    DottedDivider(topPadding: 2),
                    PaymentDetails(detail: "Amount", value: "enfioejnfowse"),
                    PaymentDetails(
                      detail: "Transaction Fee",
                      value: "enfioejnfowse",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Spacer(flex: 3),
          OutlinedButton.icon(
            onPressed: () async => await _generatePdfReceipt(),
            label: Text("Get PDF Receipt"),
            icon: Icon(OctIcons.download),
          ),
          Values.v12.verticalSpacing,
          FilledButton(
            onPressed:
                () => ref
                    .read(appRouterProvider)
                    .popUntilRouteWithName(AppBottomNavBarRoute.name),
            child: Text("Back to Home"),
          ),
          Spacer(),
        ],
      ),
    );
  }

  Future<void> _shareReceipt(double pixelRatio) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final String fileName =
        "paypadi_receipt_${getDateAndTime(DateTime.now())}.png";
    final String? savedReceiptPath = await screenshotController.captureAndSave(
      directory.path,
      fileName: fileName,
      pixelRatio: pixelRatio,
    );

    if (savedReceiptPath == null) {
      return;
    }

    final XFile shareableFile = XFile("${directory.path}/$fileName");

    final Uint8List imageToSave = await shareableFile.readAsBytes();
    final result = await ImageGallerySaverPlus.saveImage(imageToSave);

    final ShareResult shareStatus = await SharePlus.instance.share(
      ShareParams(files: [shareableFile]),
    );

    logger.debug(savedReceiptPath);
    logger.debug(shareStatus);
    logger.debug(result);
  }

  Future<void> _generatePdfReceipt() async {
    // try {
    //   final pdf = await exportDelegate.exportToPdfDocument('receipt');
    //   logger.debug(pdf);
    // } on Exception catch (e) {
    //   logger.debug(e.toString(), e);
    // }
  }
}

class _PaymentDetailsStatusIcon extends HookWidget {
  const _PaymentDetailsStatusIcon({required this.status});
  final PaymentStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: switch (status) {
          PaymentStatus.success => AppColors.success.withValues(alpha: .12),
          PaymentStatus.failure => AppColors.failure.withValues(alpha: .12),
        },
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: switch (status) {
            PaymentStatus.success => AppColors.success,
            PaymentStatus.failure => AppColors.failure,
          },
        ),
        child: Icon(
          switch (status) {
            PaymentStatus.success => Icons.check,
            PaymentStatus.failure => Icons.close,
          },
          color: AppColors.white,
        ),
      ),
    );
  }
}
