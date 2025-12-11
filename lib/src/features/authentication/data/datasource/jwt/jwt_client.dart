import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:paypadi/src/features/authentication/domain/DTO/responses.dart';

part 'jwt_client.g.dart';

const String _basePath = "/auth";

@RestApi()
abstract class JwtClient {
  factory JwtClient(Dio dio, {String baseUrl}) = _JwtClient;

  @POST('$_basePath/jwt/token')
  Future<dynamic> getJwtToken({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/jwt/token/refresh')
  Future<TokenResponse> refreshJwtToken({
    @Body() required Map<String, dynamic> refresh,
  });

  @POST('$_basePath/jwt/token/verify')
  Future<String> verifyJwtToken({
    @Body() required Map<String, dynamic> token,
  });
}
