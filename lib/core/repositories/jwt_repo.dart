import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/datasource/jwt_ds/jwt_client.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/src/features/authentication/domain/responses.dart';

class JwtRepository {
  const JwtRepository({required this.client});
  final JwtClient client;

  FutureResultOf<TokenResponse> refreshTokens(String refreshToken) async {
    final payload = <String, dynamic>{"refresh": refreshToken};

    final response = await Result.fromAsync<TokenResponse>(
      () => client.refreshJwtToken(payload: payload),
    );
    return response;
  }
}
