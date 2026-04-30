import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/user_model/user_model.dart';
import 'package:paypadi/core/repositories/authentication_repo.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';

part 'authentication_controller.g.dart';

@Riverpod(keepAlive: true)
Map<String, dynamic> authenticationPayload(Ref ref) => <String, dynamic>{};

@riverpod
class AuthenticationController extends _$AuthenticationController {
  late final AuthenticationRepository _authRepository;

  @override
  FutureOr<void> build() {
    _authRepository = ref.watch(authenticationRepositoryProvider);
  }

  Future<void> createAccount() async {
    state = AsyncLoading();
    final payload = ref.watch(authenticationPayloadProvider);

    final String sessionId = ref
        .read(localCacheProvider)
        .getFromCache(CacheKeys.sessionId);

    final result = await _authRepository.createAccount(sessionId, payload);

    result.fold(
      (success) {
        _saveUserToCache(success.data.user);
        _saveAuthenticationTokens(success.data.refreshToken, success.data.accessToken);
        ref.read(appRouterProvider).push(CreateTransactionPinRoute());
        state = AsyncData(null);
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> requestForOtp() async {
    state = AsyncLoading();
    final payloadBuilder = ref.watch(authenticationPayloadProvider);
    final Map<String, dynamic> payload = <String, dynamic>{
      "phone_number": payloadBuilder["phone_number"],
      "purpose": "registration",
    };

    final result = await _authRepository.requestForOtpCode(payload);

    result.fold(
      (success) {
        ref.read(appRouterProvider).push(OtpRoute());
        state = AsyncData(null);
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> verifyOtpCode(String code) async {
    state = AsyncLoading();
    final payloadBuilder = ref.watch(authenticationPayloadProvider);
    final Map<String, dynamic> payload = <String, dynamic>{
      "phone_number": payloadBuilder["phone_number"],
      "purpose": "registration",
      "code": code,
    };

    final result = await _authRepository.verifyOtpCode(payload);

    result.fold(
      (success) {
        _saveSessionId(success.data.sessionId);
        ref.read(appRouterProvider).push(AccountRoleRoute());
        state = AsyncData(null);
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> login(String phoneNumber, String password) async {
    state = AsyncLoading();
    final payload = <String, dynamic>{
      "phone_number": phoneNumber,
      "password": password,
    };

    final result = await _authRepository.login(payload);

    result.fold(
      (success) {
        _saveAuthenticationTokens(
          success.data.refreshToken,
          success.data.accessToken,
        );
        _savePasswordToCache(password);
        _saveUserToCache(success.data.user);

        ref.read(appRouterProvider).push(DashboardRoute());
        state = AsyncData(null);
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> loginWithBiometrics() async {
    final biometricService = ref.watch(biometricsProvider);
    final user = ref.watch(localCacheProvider).getFromCache<UserModel>(
      CacheKeys.user,
      (data) {
        final json = jsonDecode(data) as Map<String, dynamic>;
        return UserModel.fromJson(json);
      },
    );

    final result = await biometricService.authenticate();

    result.fold(
      (success) async {
        final String? password = await ref
            .read(secureCacheProvider)
            .read(CacheKeys.password);

        await login(user?.phoneNumber ?? '', password ?? '');
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  void logout() async {
    await ref.read(secureCacheProvider).clearStorage();
    await ref.read(localCacheProvider).clearStorage();
    ref.read(appRouterProvider).popUntilRoot();

    // .pushAndPopUntil(
    //   OnboardingRoute(),
    //   predicate: (route) => route.settings.name == "/sign-in",
    // );
  }

  void _saveSessionId(String sessionId) {
    ref
        .read(localCacheProvider)
        .saveToCache(key: CacheKeys.sessionId, value: sessionId);
  }

  void _saveUserToCache(UserModel user) {
    ref
        .read(localCacheProvider)
        .saveToCache(
          key: CacheKeys.user,
          value: user.toJson(),
        );
  }

  void _savePasswordToCache(String password) {
    ref
        .read(secureCacheProvider)
        .write(
          key: CacheKeys.password,
          value: password,
        );
  }

  void _saveAuthenticationTokens(String refreshToken, String accessToken) {
    ref
        .read(secureCacheProvider)
        .write(
          key: CacheKeys.refreshToken,
          value: refreshToken,
        );

    ref
        .read(secureCacheProvider)
        .write(
          key: CacheKeys.accessToken,
          value: accessToken,
        );
  }
}
