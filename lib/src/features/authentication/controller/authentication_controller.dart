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

  Future<void> login(String phoneNumber, String password) async {
    state = const AsyncLoading();

    final result = await _repository.login({
      'phone_number': phoneNumber,
      'password': password,
    });

    await result.fold(
      (response) async {
        unawaited(
          Future.wait([
            _saveSessionTokens(
              response.data.refreshToken,
              response.data.accessToken,
            ),
            _saveUser(response.data.user),
            _savePassword(password),
          ]),
        );

        state = const AsyncData(null);
        await ref.read(appRouterProvider).push(const DashboardRoute());
      },
      (exception) {
        ref.showExceptionMessage(exception);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> register() async {
    state = const AsyncLoading();
    final payload = ref.read(authenticationPayloadProvider);

    final result = await _repository.createAccount(payload);

    await result.fold(
      (success) async {
        unawaited(
          Future.wait([
            _saveUser(success.data.user),
            _saveSessionTokens(
              success.data.refreshToken,
              success.data.accessToken,
            ),
          ]),
        );

        state = const AsyncData(null);
        await ref
            .read(appRouterProvider)
            .push(const CreateTransactionPinRoute());
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> requestForOtp() async {
    state = const AsyncLoading();
    final payloadBuilder = ref.read(authenticationPayloadProvider);

    final result = await _repository.requestForOtpCode({
      'phone_number': payloadBuilder['phone_number'],
      'purpose': 'registration',
    });

    await result.fold(
      (success) async {
        state = const AsyncData(null);
        await ref.read(appRouterProvider).push(const OtpRoute());
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> verifyOtpCode(String code) async {
    state = const AsyncLoading();
    final payloadBuilder = ref.read(authenticationPayloadProvider);

    final result = await _repository.verifyOtpCode({
      'phone_number': payloadBuilder['phone_number'],
      'purpose': 'registration',
      'code': code,
    });

    await result.fold(
      (success) async {
        final payload = ref.read(authenticationPayloadProvider);

        payload['phone_token'] = success.data.token;

        state = const AsyncData(null);
        await ref.read(appRouterProvider).push(const AccountRoleRoute());
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> loginWithBiometrics() async {
    final biometricService = ref.read(biometricsProvider);
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

    await ref
        .read(appRouterProvider)
        .pushAndPopUntil(
          const SignInRoute(),
          predicate: (route) => route.settings.name == '/sign-in',
        );
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
