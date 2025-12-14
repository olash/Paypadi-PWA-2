import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/repositories/authentication_repo.dart';
import 'package:paypadi/src/features/authentication/domain/responses.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/utils/constants.dart';

part 'authentication_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  late final AuthenticationRepository _authRepository;

  @override
  FutureOr<void> build() {
    _authRepository = ref.watch(authenticationRepositoryProvider);
  }

  String? _phoneNumber;
  String? _password;

  void setPhoneNumer(String number) {
    _phoneNumber = number;
  }

  void setPassword(String password) {
    _password = password;
  }

  void createRiderAccount() async {
    state = AsyncLoading();

    final String sessionId = ref
        .read(localCacheProvider)
        .getFromCache(CacheKeys.sessionId);

    final Map<String, dynamic> payload = {};

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

  void createDriverAccount() async {
    state = AsyncLoading();

    final String sessionId = ref
        .read(localCacheProvider)
        .getFromCache(CacheKeys.sessionId);

    final Map<String, dynamic> payload = {};

    // String? email,
    // required String password,
    // @Default("rider") String? role,
    // @JsonKey(name: "phone_number") required String phoneNumber,
    // @JsonKey(name: "first_name") required String firstName,
    // @JsonKey(name: "last_name") required String lastName,
    // @JsonKey(name: "cab_number") String? cabNumber,
    // @JsonKey(name: "license_plate") String? licensePlate,
    // @JsonKey(name: "driver_license_number") String? driverLicenseNumber,
    // @JsonKey(name: "referred_by") String? referredBy,

    // @JsonKey(name: "account_type")
    // final String accountType;

    // @JsonKey(name: "account_name")
    // final String accountName;

    // @JsonKey(name: "account_number")
    // final String accountNumber;

    // @JsonKey(name: "bank_name")
    // final String bankName;

    // @JsonKey(name: "bank_code")
    // final String bankCode;

    // @JsonKey(name: "is_primary")
    // final bool isPrimary;

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
    final Map<String, dynamic> payload = {
      "phone_number": phoneNumber,
      "purpose": "login",
    };

    state = AsyncLoading();
    final result = await _authRepository.requestForOtpCode(payload);

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
    final Map<String, dynamic> payload = {
      "phone_number": phoneNumber,
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
        _saveToCache(success, password);
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

  void _saveToCache(LoginResponse success, String password) {
    ref
        .read(secureCacheProvider)
        .write(
          key: CacheKeys.refreshToken,
          value: success.refreshToken,
        );

    ref
        .read(secureCacheProvider)
        .write(
          key: CacheKeys.accessToken,
          value: success.accessToken,
        );

    ref
        .read(secureCacheProvider)
        .write(
          key: CacheKeys.password,
          value: password,
        );

    ref
        .read(localCacheProvider)
        .saveToCache(
          key: CacheKeys.user,
          value: success.user.toJson(),
        );
  }
}
