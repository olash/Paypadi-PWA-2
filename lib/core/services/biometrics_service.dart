import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_auth/local_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'biometrics_service.g.dart';

class BiometricsService {
  final LocalAuthentication _service = LocalAuthentication();

  bool deviceIsIos = Platform.isIOS;

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

@riverpod
BiometricsService biometrics(Ref<BiometricsService> ref) {
  return BiometricsService();
}
