import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/services/api_service.dart' show dioProvider;
import 'package:paypadi/src/features/authentication/domain/dtos/login_payload.dart';

part 'authentication_client.g.dart';

const String _basePath = "/auth";

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio) = _AuthenticationClient;

  @POST('$_basePath/register')
  Future<ApiResponse<dynamic>> createAccount({
    @Body() required dynamic payload,
  });

  @POST('$_basePath/login')
  Future<ApiResponse<dynamic>> login({
    @Body() required LoginPayload payload,
  });

  @POST('$_basePath/otp/request')
  Future<ApiResponse<dynamic>> requestForOTP({
    @Body() required LoginPayload payload,
  });

  @POST('$_basePath/otp/verify')
  Future<ApiResponse<dynamic>> verifyOTP({
    @Body() required LoginPayload payload,
  });

  @POST('$_basePath/jwt/token')
  Future<ApiResponse<dynamic>> getJwtToken({
    @Body() required LoginPayload payload,
  });

  @POST('$_basePath/jwt/token/refresh')
  Future<ApiResponse<dynamic>> refreshJwtToken({
    @Body() required LoginPayload refresh,
  });

  @POST('$_basePath/jwt/token/verify')
  Future<ApiResponse<dynamic>> verifyJwtToken({
    @Body() required LoginPayload token,
  });

  @POST('$_basePath/password/change')
  Future<ApiResponse<dynamic>> changePassword();

  @POST('$_basePath/pin/set')
  Future<ApiResponse<dynamic>> setTransactionPin();

  @GET('$_basePath/profile')
  Future<ApiResponse<dynamic>> getUser();

  @PUT('$_basePath/profile')
  Future<ApiResponse<dynamic>> updateUser();

  @PATCH('$_basePath/profile')
  Future<ApiResponse<dynamic>> partiallyUpdateUser();

  @GET('$_basePath/driver/profile')
  Future<ApiResponse<dynamic>> getDriverProfile();

  @PUT('$_basePath/driver/profile')
  Future<ApiResponse<dynamic>> updateDriverProfile();

  @PATCH('$_basePath/driver/profile')
  Future<ApiResponse<dynamic>> partiallyUpdateDriverProfile();

  @POST('$_basePath/me')
  Future<ApiResponse<dynamic>> getUserInformation();
}

@riverpod
AuthenticationClient authClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return AuthenticationClient(dio);
}
