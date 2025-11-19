import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/utils/helpers.dart';
import 'package:paypadi/src/features/authentication/data/repository/authentication_repo.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/authentication_request.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  late final AuthenticationRepo _authRepository;

  @override
  FutureOr<void> build() {
    _authRepository = ref.watch(authRepoProvider);
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
        state = AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = exception.getExceptionMessage();
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
        state = AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = exception.getExceptionMessage();
        state = AsyncError(message, StackTrace.current);
      },
    );
  }
}
