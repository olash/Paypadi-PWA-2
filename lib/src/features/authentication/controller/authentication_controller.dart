import 'dart:async';
import 'dart:convert';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/user_model/user_model.dart';
import 'package:paypadi/core/repositories/authentication/i_authentication_repository.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_controller.g.dart';

@Riverpod(keepAlive: true)
Map<String, dynamic> authenticationPayload(Ref ref) => <String, dynamic>{};

@riverpod
class AuthenticationController extends _$AuthenticationController {
  late final IAuthenticationRepository _repository;

  @override
  FutureOr<void> build() {
    _repository = ref.watch(authenticationRepositoryProvider);
  }

  Future<void> register() async {
    state = const AsyncLoading();

    final payload = ref.watch(authenticationPayloadProvider);
    final result = await _repository.createAccount(payload);

    result.fold(
      (success) {
        unawaited(
          Future.wait([
            _saveUser(success.data.user),
            _saveSessionTokens(
              success.data.refreshToken,
              success.data.accessToken,
            ),
          ]),
        );

        ref.read(appRouterProvider).push(const CreateTransactionPinRoute());
        state = const AsyncData(null);
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> requestForOtp() async {
    state = const AsyncLoading();
    final payloadBuilder = ref.watch(authenticationPayloadProvider);
    final Map<String, dynamic> payload = <String, dynamic>{
      'phone_number': payloadBuilder['phone_number'],
      'purpose': 'registration',
    };

    final result = await _repository.requestForOtpCode(payload);

    result.fold(
      (success) {
        ref.read(appRouterProvider).push(const OtpRoute());
        state = const AsyncData(null);
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> verifyOtpCode(String code) async {
    state = const AsyncLoading();
    final payloadBuilder = ref.watch(authenticationPayloadProvider);
    final Map<String, dynamic> payload = <String, dynamic>{
      'phone_number': payloadBuilder['phone_number'],
      'purpose': 'registration',
      'code': code,
    };

    final result = await _repository.verifyOtpCode(payload);

    result.fold(
      (success) {
        final payload = ref.watch(authenticationPayloadProvider);
        payload['phone_token'] = success.data.token;
        ref.read(appRouterProvider).push(const AccountRoleRoute());
        state = const AsyncData(null);
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> login(String phoneNumber, String password) async {
    state = const AsyncLoading();
    final payload = <String, dynamic>{
      'phone_number': phoneNumber,
      'password': password,
    };

    final result = await _repository.login(payload);

    result.fold(
      (success) {
        unawaited(
          Future.wait([
            _saveSessionTokens(
              success.data.refreshToken,
              success.data.accessToken,
            ),
            _saveUser(success.data.user),
            _savePassword(password),
          ]),
        );

        ref.read(appRouterProvider).push(const DashboardRoute());
        state = const AsyncData(null);
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> loginWithBiometrics() async {
    final biometricService = ref.watch(biometricsProvider);
    final localCache = await ref.read(localCacheProvider.future);

    final user = await localCache.get<UserModel?>(
      CacheKeys.user,
      (data) {
        final json = jsonDecode(data as String) as Map<String, dynamic>;
        return UserModel.fromJson(json);
      },
    );

    if (user == null) return;

    try {
      final didAuthenticate = await biometricService.authenticate();

      if (didAuthenticate) {
        final password = await ref
            .read(secureCacheProvider)
            .get<String?>(CacheKeys.password);

        await login(user.phoneNumber, password ?? '');
      }
    } catch (exception) {
      ref.showExceptionMessage(exception);
      state = const AsyncData(null);
    }
  }

  Future<void> logout() async {
    final localCache = await ref.read(localCacheProvider.future);

    await localCache.clear();
    await ref.read(secureCacheProvider).clear();

    // ref
    //     .read(appRouterProvider)
    //     .pushAndPopUntil(
    //       const OnboardingRoute(),
    //       predicate: (route) => route.settings.name == '/sign-in',
    //     );
  }

  Future<void> _saveUser(UserModel user) async {
    final localCache = await ref.read(localCacheProvider.future);
    await localCache.save(key: CacheKeys.user, value: user.toJson());
  }

  Future<void> _savePassword(String password) async {
    await ref
        .read(secureCacheProvider)
        .save(key: CacheKeys.password, value: password);
  }

  Future<void> _saveSessionTokens(
    String refreshToken,
    String accessToken,
  ) async {
    await ref
        .read(secureCacheProvider)
        .save(key: CacheKeys.refreshToken, value: refreshToken);

    await ref
        .read(secureCacheProvider)
        .save(key: CacheKeys.accessToken, value: accessToken);
  }
}
