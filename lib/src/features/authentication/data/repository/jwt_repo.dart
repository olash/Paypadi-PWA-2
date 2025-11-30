import 'package:paypadi/src/features/authentication/data/datasource/jwt/jwt_client.dart';

class JwtRepository {
  const JwtRepository({required this.client});
  final JwtClient client;

  // FutureResultOf<RegisterUserResponse> createAccount(
  //   String sessionId,
  //   RegisterPayload payload,
  // ) async {
  //   final response = await Result.fromAsync<RegisterUserResponse>(
  //     () => client.createAccount(
  //       cookie: "sessionid=$sessionId",
  //       payload: payload,
  //     ),
  //   );
  //   return response;
  // }

  // FutureResultOf<RequestForOtpResponse> requestForOtpCode(
  //   RequestForOtpPayload payload,
  // ) async {
  //   final response = await Result.fromAsync<RequestForOtpResponse>(
  //     () => client.requestForOTP(payload: payload),
  //   );
  //   return response;
  // }

  // FutureResultOf<VerifyOtpResponse> verifyOtpCode(
  //   VerifyOtpPayload payload,
  // ) async {
  //   final response = await Result.fromAsync<VerifyOtpResponse>(
  //     () => client.verifyOTP(payload: payload),
  //   );
  //   return response;
  // }
}
