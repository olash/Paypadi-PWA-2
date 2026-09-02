// ignore: avoid_web_libraries_in_flutter
import 'dart:io' if (dart.library.html) 'package:paypadi/core/utils/_stub_io.dart'
    show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;

/// Central platform detection helpers.
///
/// Always prefer these over raw [kIsWeb] / [Platform] checks so all
/// feature-flags stay in one place and are easy to audit.

/// `true` when running in a browser (Flutter Web).
bool get isWeb => kIsWeb;

/// `true` on native Android or iOS (not web).
bool get isMobile => !kIsWeb && (Platform.isAndroid || Platform.isIOS);

/// Native camera / QR scanning via `mobile_scanner` is available.
bool get supportsNativeCamera => !kIsWeb;

/// OS-level biometrics via `local_auth` are available.
bool get supportsBiometrics => !kIsWeb;

/// Saving images to the device gallery via `image_gallery_saver_plus`.
bool get supportsGallerySave => !kIsWeb;

/// Secure keychain-backed storage via `flutter_secure_storage`.
/// On web the package falls back to localStorage — we use in-memory instead.
bool get supportsSecureStorage => !kIsWeb;
