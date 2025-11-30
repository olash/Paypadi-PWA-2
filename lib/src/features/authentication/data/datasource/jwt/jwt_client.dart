import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/responses.dart/responses.dart';

part 'jwt_client.g.dart';

const String _basePath = "/auth";

@RestApi()
abstract class JwtClient {
  factory JwtClient(Dio dio, {String baseUrl}) = _JwtClient;

  @POST('$_basePath/jwt/token')
  Future<dynamic> getJwtToken({
    @Body() required GetJwtPayload payload,
  });

  @POST('$_basePath/jwt/token/refresh')
  Future<TokenResponse> refreshJwtToken({
    @Body() required String refresh,
  });

  @POST('$_basePath/jwt/token/verify')
  Future<String> verifyJwtToken({
    @Body() required String token,
  });
}
