import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/service_registry/service_registry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/src/features/authentication/data/repository/authentication_repo.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';

part 'authentication_controller.g.dart';

@Riverpod(keepAlive: false)
class AuthController extends _$AuthController {
  late final AuthenticationRepo _authRepository;

  @override
  FutureOr<void> build() {
    _authRepository = ref.watch(authRepoProvider);
  }

  void createAccount() async {
    final RegisterUserPayload userPayload = diLocator
        .get<RegisterUserPayloadBuilder>()
        .build();

    final RegisterUserPayload body = RegisterUserPayload(
      phoneNumber: userPayload.phoneNumber,
      firstName: userPayload.firstName,
      lastName: userPayload.lastName,
      password: userPayload.password,
      role: userPayload.role,
      referredBy: userPayload.referredBy,
    );

    state = AsyncLoading();

    final String sessionId = ref
        .read(localCacheProvider)
        .getFromCache(CacheKeys.sessionId);

    final result = await _authRepository.createAccount(sessionId, body);

    result.fold(
      (success) {
        state = AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        state = AsyncError(message, StackTrace.current);
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

    result.fold(
      (success) {
        ref.read(appRouterProvider).push(OtpRoute(phoneNumber: phoneNumber));
        state = AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        state = AsyncError(message, StackTrace.current);
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

    result.fold(
      (success) {
        ref
            .read(localCacheProvider)
            .saveToCache(key: CacheKeys.sessionId, value: success.sessionId);
        ref.read(appRouterProvider).push(AccountRoleRoute());
        state = AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        state = AsyncError(message, StackTrace.current);
      },
    );
  }
}
