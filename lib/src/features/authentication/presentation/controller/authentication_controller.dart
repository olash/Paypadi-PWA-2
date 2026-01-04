import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/models/user_model/user_model.dart';
import 'package:paypadi/core/repositories/authentication_repo.dart';
import 'package:paypadi/core/utils/constants.dart';

part 'authentication_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  late Map<String, dynamic> payloadBuilder;
  late final AuthenticationRepository _authRepository;

  @override
  FutureOr<void> build() {
    payloadBuilder = {};
    _authRepository = ref.watch(authenticationRepositoryProvider);
  }

  void createAccount() async {
    state = AsyncLoading();

    final String sessionId = ref
        .read(localCacheProvider)
        .getFromCache(CacheKeys.sessionId);

    final result = await _authRepository.createAccount(
      sessionId,
      payloadBuilder,
    );

    state = result.fold(
      (success) {
        _saveUserToCache(success.user);
        _saveAuthenticationTokens(success.refreshToken, success.accessToken);
        ref.read(appRouterProvider).push(TransactionPinRoute());
        return AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        return AsyncError(message, StackTrace.current);
      },
    );
  }

  void requestForOtp(Map<String, dynamic> payload) async {
    state = AsyncLoading();
    final result = await _authRepository.requestForOtpCode(payload);

    state = result.fold(
      (success) {
        final String phoneNumber = payloadBuilder["phone_number"];
        ref.read(appRouterProvider).push(OtpRoute(phoneNumber: phoneNumber));
        return AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        return AsyncError(message, StackTrace.current);
      },
    );
  }

  void verifyOtpCode(String code) async {
    final Map<String, dynamic> payload = {
      "phone_number": payloadBuilder["phone_number"],
      "purpose": "login",
      "code": code,
    };

    state = AsyncLoading();
    final result = await _authRepository.verifyOtpCode(payload);

    state = result.fold(
      (success) {
        ref
            .read(localCacheProvider)
            .saveToCache(key: CacheKeys.sessionId, value: success.sessionId);
        ref.read(appRouterProvider).push(AccountRoleRoute());
        return AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        return AsyncError(message, StackTrace.current);
      },
    );
  }

  void login(String phoneNumber, String password) async {
    state = AsyncLoading();

    final Map<String, dynamic> payload = {
      "phone_number": phoneNumber,
      "password": password,
    };

    final result = await _authRepository.login(payload);

    state = result.fold(
      (success) {
        _saveAuthenticationTokens(success.refreshToken, success.accessToken);
        _savePasswordToCache(password);
        _saveUserToCache(success.user);

        ref.read(appRouterProvider).push(AppBottomNavBarRoute());
        return AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        return AsyncError(message, StackTrace.current);
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
