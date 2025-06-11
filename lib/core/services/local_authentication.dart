import 'package:local_auth/local_auth.dart';

class LocalAuthenticationService {
  final LocalAuthentication _service = LocalAuthentication();

  Future<bool> deviceHasBiometrics() => _service.canCheckBiometrics;

  Future<bool> authenticate([String? reason]) async {
    const AuthenticationOptions options = AuthenticationOptions(
      stickyAuth: true,
    );

    try {
      final bool isAuthenticated = await _service.authenticate(
        localizedReason: reason ?? 'Login with Biometrics',
        options: options,
      );

      return isAuthenticated;
    } catch (e) {
      return false;
    }
  }
}
