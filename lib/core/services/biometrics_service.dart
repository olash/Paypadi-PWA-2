import 'package:local_auth/local_auth.dart';

class BiometricsService {
  final LocalAuthentication _service = LocalAuthentication();

  Future<bool> deviceHasBiometrics() => _service.canCheckBiometrics;

  Future<bool> authenticate([String? reason]) async {
    const AuthenticationOptions options = AuthenticationOptions(
      stickyAuth: true,
    );

    try {
      return await _service.authenticate(
        options: options,
        localizedReason: reason ?? 'Login with Biometrics',
      );
    } catch (e) {
      return false;  
    }
  }
}
