import 'package:local_auth/local_auth.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/api/result.dart';

class BiometricsService {
  final LocalAuthentication _service = LocalAuthentication();

  Future<bool> deviceHasBiometrics() => _service.canCheckBiometrics;

  Future<Result<bool, AppException>> authenticate([String? reason]) async {
    try {
      final didAuthenticate = await _service.authenticate(
        persistAcrossBackgrounding: true,
        localizedReason: reason ?? 'Login with Biometrics',
      );

      return success<bool, AppException>(didAuthenticate);
    } on Error {
      // Let programming errors surface
      rethrow;
    } on Exception catch (e) {
      final AppException appEx = AppException.handleException(e);
      return failure<bool, AppException>(appEx);
    }
  }
}
