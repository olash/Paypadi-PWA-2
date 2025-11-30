import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/src/features/authentication/data/datasource/auth/authentication_client.dart';

import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/responses.dart/responses.dart';

class AuthenticationRepository {
  const AuthenticationRepository({required this.client});
  final AuthenticationClient client;

  FutureResultOf<RegisterUserResponse> createAccount(
    String sessionId,
    RegisterPayload payload,
  ) async {
    final response = await Result.fromAsync<RegisterUserResponse>(
      () => client.createAccount(
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
      () => client.requestForOTP(payload: payload),
    );
    return response;
  }

  FutureResultOf<VerifyOtpResponse> verifyOtpCode(
    VerifyOtpPayload payload,
  ) async {
    final response = await Result.fromAsync<VerifyOtpResponse>(
      () => client.verifyOTP(payload: payload),
    );
    return response;
  }
}
