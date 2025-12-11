import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/src/features/authentication/data/datasource/auth/authentication_client.dart';

import 'package:paypadi/src/features/authentication/domain/DTO/responses.dart';

class AuthenticationRepository {
  const AuthenticationRepository({required this.client});
  final AuthenticationClient client;

  FutureResultOf<CreateAccountResponse> createAccount(
    String sessionId,
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<CreateAccountResponse>(
      () => client.createAccount(
        cookie: "sessionid=$sessionId",
        payload: payload,
      ),
    );
    return response;
  }

  FutureResultOf<LoginResponse> login(Map<String, dynamic> payload) async {
    final response = await Result.fromAsync<LoginResponse>(
      () => client.login(payload: payload),
    );
    return response;
  }

  FutureResultOf<RequestForOtpResponse> requestForOtpCode(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<RequestForOtpResponse>(
      () => client.requestForOTP(payload: payload),
    );
    return response;
  }

  FutureResultOf<VerifyOtpResponse> verifyOtpCode(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<VerifyOtpResponse>(
      () => client.verifyOTP(payload: payload),
    );
    return response;
  }
}
