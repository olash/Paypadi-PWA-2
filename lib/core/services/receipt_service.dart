import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class ReceiptService {
  Future<void> shareReceipt(
    double pixelRatio,
    ScreenshotController controller,
  ) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final String fileName =
        'paypadi_receipt_${_getDateAndTime(DateTime.now())}.png';
    final String? savedReceiptPath = await controller.captureAndSave(
      directory.path,
      fileName: fileName,
      pixelRatio: pixelRatio,
    );

    if (savedReceiptPath == null) {
      return;
    }

    final XFile shareableFile = XFile('${directory.path}/$fileName');

    final Uint8List imageToSave = await shareableFile.readAsBytes();
    final result = await ImageGallerySaverPlus.saveImage(imageToSave);

    final ShareResult shareStatus = await SharePlus.instance.share(
      ShareParams(files: [shareableFile]),
    );

    debugLogger.debug(savedReceiptPath);
    debugLogger.debug(shareStatus);
    debugLogger.debug(result);
  }

  Future<void> generateReceiptInPdf() async {
    // try {
    //   final pdf = await exportDelegate.exportToPdfDocument('receipt');
    //   debugLogger.debug(pdf);
    // } on Exception catch (e) {
    //   debugLogger.debug(e.toString(), e);
    // }
  }

  String _getDateAndTime(DateTime date) {
    final year = date.year.toString().padLeft(4, '0');
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');
    final hour = date.hour.toString().padLeft(2, '0');
    final minute = date.minute.toString().padLeft(2, '0');
    return '$year-$month-${day}_$hour:$minute';
  }
}
