import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/src/features/authentication/data/repository/authentication_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/utils/constants.dart';

import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';

part 'authentication_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  late final AuthenticationRepository _authRepository;

  @override
  FutureOr<void> build() {
    _authRepository = ref.watch(authenticationRepositoryProvider);
  }

  void createAccount() async {
    state = AsyncLoading();

    final String sessionId = ref
        .read(localCacheProvider)
        .getFromCache(CacheKeys.sessionId);

    final RegisterPayload payload = diLocator
        .get<RegisterPayloadBuilder>()
        .build();

    final result = await _authRepository.createAccount(sessionId, payload);

    state = result.fold(
      (success) {
        // ref
        //     .read(secureCacheProvider)
        //     .write(key: CacheKeys.loginPin, value: payload.password);
        // ref.read(appRouterProvider).push(TransactionPinRoute());
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

  void requestForOtp(String phoneNumber) async {
    final RequestForOtpPayload body = RequestForOtpPayload(
      phoneNumber: phoneNumber,
      purpose: "login",
    );

    state = AsyncLoading();
    final result = await _authRepository.requestForOtpCode(body);

    state = result.fold(
      (success) {
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

  void verifyOtpCode(String phoneNumber, String code) async {
    final VerifyOtpPayload body = VerifyOtpPayload(
      phoneNumber: phoneNumber,
      purpose: "login",
      code: code,
    );

    state = AsyncLoading();
    final result = await _authRepository.verifyOtpCode(body);

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
}
