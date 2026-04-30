import 'package:dio/dio.dart';
import 'package:paypadi/core/api/response/api_response.dart';
import 'package:retrofit/retrofit.dart';

import 'package:paypadi/src/features/authentication/domain/responses.dart';

part 'jwt_client.g.dart';

const String _basePath = "/auth";

@RestApi()
abstract class JwtClient {
  factory JwtClient(Dio dio, {String baseUrl}) = _JwtClient;

  @POST('$_basePath/jwt/token/')
  Future<ApiResponse> getJwtToken({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/jwt/token/refresh/')
  Future<ApiResponse<TokenResponse>> refreshJwtToken({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/jwt/token/verify/')
  Future<ApiResponse<String>> verifyJwtToken({
    @Body() required Map<String, dynamic> payload,
  });
}
