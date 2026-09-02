// ignore: avoid_web_libraries_in_flutter, deprecated_member_use
import 'dart:html' if (dart.library.io) 'package:paypadi/core/utils/_stub_html.dart'
    as html;

import 'package:flutter/foundation.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/platform_utils.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class ReceiptService {
  Future<void> shareReceipt(
    double pixelRatio,
    ScreenshotController controller,
  ) async {
    if (isWeb) {
      // On web: capture to bytes and trigger a browser download.
      final Uint8List? imageBytes = await controller.capture(
        pixelRatio: pixelRatio,
      );
      if (imageBytes == null) return;

      _downloadBytesOnWeb(
        bytes: imageBytes,
        filename: 'paypadi_receipt_${_getDateAndTime(DateTime.now())}.png',
        mimeType: 'image/png',
      );
      return;
    }

    // Mobile: save to gallery and share via share sheet.
    final directory = await getApplicationDocumentsDirectory();
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

  /// Triggers a browser download of [bytes] with the given [filename].
  void _downloadBytesOnWeb({
    required Uint8List bytes,
    required String filename,
    required String mimeType,
  }) {
    final blob = html.Blob([bytes], mimeType);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.document.createElement('a') as html.AnchorElement
      ..href = url
      ..download = filename
      ..style.display = 'none';
    html.document.body!.append(anchor);
    anchor.click();
    anchor.remove();
    html.Url.revokeObjectUrl(url);
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

