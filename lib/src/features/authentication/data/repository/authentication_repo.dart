import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/src/features/authentication/data/datasource/authentication_client.dart'
    show AuthenticationClient, authClientProvider;
import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/responses.dart/responses.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repo.g.dart';

class AuthenticationRepo {
  const AuthenticationRepo(this.authClient);
  final AuthenticationClient authClient;

  FutureResultOf<RegisterUserResponse> createAccount(
    String sessionId,
    RegisterUserPayload payload,
  ) async {
    final response = await Result.fromAsync<RegisterUserResponse>(
      () => authClient.createAccount(
        cookie: "sessionid=$sessionId",
        payload: payload,
      ),
    );
    return response;
  }

  FutureResultOf<RequestForOtpResponse> requestForOtpCode(
    RequestForOtpPayload payload,
  ) async {
    final response = await Result.fromAsync<RequestForOtpResponse>(
      () => authClient.requestForOTP(payload: payload),
    );
    return response;
  }

  FutureResultOf<VerifyOtpResponse> verifyOtpCode(
    VerifyOtpPayload payload,
  ) async {
    final response = await Result.fromAsync<VerifyOtpResponse>(
      () => authClient.verifyOTP(payload: payload),
    );
    return response;
  }
}

@riverpod
AuthenticationRepo authRepo(Ref ref) {
  final apiClient = ref.watch(authClientProvider);
  return AuthenticationRepo(apiClient);
}
