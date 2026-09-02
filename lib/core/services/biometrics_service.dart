import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:local_auth/local_auth.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';

class BiometricsService {
  /// Only instantiated on non-web platforms to avoid a compile-time crash.
  late final LocalAuthentication _service =
      kIsWeb ? throw UnsupportedError('Biometrics not supported on web') : LocalAuthentication();

  /// Returns `false` on web — biometrics are a native-only capability.
  Future<bool> deviceHasBiometrics() async {
    if (kIsWeb) return false;
    return _service.canCheckBiometrics;
  }

  /// Always returns `false` on web. On mobile it triggers the OS biometric prompt.
  Future<bool> authenticate([String? reason]) async {
    if (kIsWeb) return false;
    try {
      final didAuthenticate = await _service.authenticate(
        persistAcrossBackgrounding: true,
        localizedReason: reason ?? 'Login with Biometrics',
      );

      return didAuthenticate;
    } catch (e, st) {
      throw AppException.handleException(e, st);
    }
  }
}
