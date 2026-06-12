import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/clients/jwt/jwt_client.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/src/features/authentication/domain/responses.dart';

class JwtRepository {
  const JwtRepository({required this.client});
  final JwtClient client;

  FutureApiResultOf<TokenResponse> refreshTokens(String refreshToken) async {
    final payload = <String, dynamic>{'refresh': refreshToken};

    final response = await Result.fromAsync<ApiResponse<TokenResponse>>(
      () => client.refreshJwtToken(payload: payload),
    );
    return response;
  }
}
