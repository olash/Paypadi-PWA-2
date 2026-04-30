import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/core/datasource/authentication_ds/authentication_client.dart';

import 'package:paypadi/src/features/authentication/domain/responses.dart';

class AuthenticationRepository {
  const AuthenticationRepository({required this.client});
  final AuthenticationClient client;

  FutureApiResultOf<CreateAccountResponse> createAccount(
    String sessionId,
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<CreateAccountResponse>>(
      () => client.createAccount(
        cookie: "sessionid=$sessionId",
        payload: payload,
      ),
    );
    return response;
  }

  FutureResultOf<ApiResponse<LoginResponse>> login(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<LoginResponse>>(
      () => client.login(payload: payload),
    );
    return response;
  }

  FutureApiResultOf<RequestForOtpResponse> requestForOtpCode(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<RequestForOtpResponse>>(
      () => client.requestForOTP(payload: payload),
    );
    return response;
  }

  FutureApiResultOf<VerifyOtpResponse> verifyOtpCode(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<VerifyOtpResponse>>(
      () => client.verifyOTP(payload: payload),
    );
    return response;
  }
}
