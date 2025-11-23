import 'package:dio/dio.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/responses.dart/responses.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/services/api_service.dart' show dioProvider;

part 'authentication_client.g.dart';

const String _basePath = "/auth";

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String baseUrl}) =
      _AuthenticationClient;

  @POST('$_basePath/register/')
  Future<RegisterUserResponse> createAccount({
    @Header("Cookie") required String cookie,
    @Body() required RegisterUserPayload payload,
  });

  // @POST('$_basePath/login')
  // Future<ApiResponse<dynamic>> login({
  //   @Body() required LoginPayload payload,
  // });

  @POST('$_basePath/otp/request/')
  Future<RequestForOtpResponse> requestForOTP({
    @Body() required RequestForOtpPayload payload,
  });

  @POST('$_basePath/otp/verify/')
  Future<VerifyOtpResponse> verifyOTP({
    @Body() required VerifyOtpPayload payload,
  });

  // @POST('$_basePath/jwt/token')
  // Future<ApiResponse<dynamic>> getJwtToken({
  //   @Body() required  payload,
  // });

  // @POST('$_basePath/jwt/token/refresh')
  // Future<ApiResponse<dynamic>> refreshJwtToken({
  //   @Body() required LoginPayload refresh,
  // });

  // @POST('$_basePath/jwt/token/verify')
  // Future<ApiResponse<dynamic>> verifyJwtToken({
  //   @Body() required LoginPayload token,
  // });

  @POST('$_basePath/password/change/')
  Future<ApiResponse<dynamic>> changePassword();

  @POST('$_basePath/pin/set/')
  Future<ApiResponse<dynamic>> setTransactionPin();

  @GET('$_basePath/profile/')
  Future<ApiResponse<dynamic>> getUser();

  @PUT('$_basePath/profile/')
  Future<ApiResponse<dynamic>> updateUser();

  @PATCH('$_basePath/profile/')
  Future<ApiResponse<dynamic>> partiallyUpdateUser();

  @GET('$_basePath/driver/profile/')
  Future<ApiResponse<dynamic>> getDriverProfile();

  @PUT('$_basePath/driver/profile/')
  Future<ApiResponse<dynamic>> updateDriverProfile();

  @PATCH('$_basePath/driver/profile/')
  Future<ApiResponse<dynamic>> partiallyUpdateDriverProfile();

  @POST('$_basePath/me/')
  Future<ApiResponse<dynamic>> getUserInformation();
}

@riverpod
AuthenticationClient authClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return AuthenticationClient(dio);
}
