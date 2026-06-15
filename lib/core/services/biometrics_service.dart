import 'package:local_auth/local_auth.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';

class BiometricsService {
  final LocalAuthentication _service = LocalAuthentication();

  Future<bool> deviceHasBiometrics() => _service.canCheckBiometrics;

  Future<bool> authenticate([String? reason]) async {
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
