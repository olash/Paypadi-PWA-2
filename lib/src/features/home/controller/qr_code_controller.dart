import 'dart:async';

import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'qr_code_controller.g.dart';

@riverpod
class QrCodeController extends _$QrCodeController {
  late final MobileScannerController scannerController;
  StreamSubscription<BarcodeCapture>? _barcodeSubscription;

  @override
  FutureOr<String?> build() async {
    // 1. Initialize the MobileScannerController
    // Best Practice: Restrict formats and adjust detection speed to optimize battery and CPU usage.
    scannerController = MobileScannerController(
      formats: const [BarcodeFormat.qrCode],
    );

    // 2. Listen to the barcode stream to handle detections outside of the UI tree
    _barcodeSubscription = scannerController.barcodes.listen(
      _onBarcodeDetected,
    );

    // 3. Manage Lifecycle: Ensure everything is disposed of when the provider is torn down
    ref.onDispose(() async {
      await _barcodeSubscription?.cancel();
      await scannerController.dispose();
    });

    return null;
  }

  /// Handles the incoming barcode capture events
  void _onBarcodeDetected(BarcodeCapture capture) {
    final List<Barcode> barcodes = capture.barcodes;

    if (barcodes.isNotEmpty && barcodes.first.rawValue != null) {
      state = AsyncData(barcodes.first.rawValue);
    }
  }

  Future<void> toggleTorch() async {
    await scannerController.toggleTorch();
  }

  Future<void> switchCamera() async {
    await scannerController.switchCamera();
  }
}
