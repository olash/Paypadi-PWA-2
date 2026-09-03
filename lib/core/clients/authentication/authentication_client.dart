import 'package:dio/dio.dart';
import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/clients/authentication/i_authentication_client.dart';

import 'package:retrofit/retrofit.dart';

part 'authentication_client.g.dart';

const String _basePath = '/auth';

@RestApi()
abstract class AuthenticationClient implements IAuthenticationClient {
  factory AuthenticationClient(
    Dio dio, {
    String baseUrl,
  }) = _AuthenticationClient;

  @override
  @POST('$_basePath/register/')
  Future<ApiResponse<RegisterResponse>> createAccount({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/login/')
  Future<ApiResponse<LoginResponse>> login({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/otp/request/')
  Future<ApiResponse<RequestOtpResponse>> requestForOTP({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/otp/verify/')
  Future<ApiResponse<VerifyOtpResponse>> verifyOTP({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/password/reset/')
  Future<ApiResponse<dynamic>> resetPassword({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/password/change/')
  Future<ApiResponse<dynamic>> changePassword({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/pin/set/')
  Future<ApiResponse<dynamic>> setTransactionPin({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/pin/change/')
  Future<ApiResponse<dynamic>> changeTransactionPin({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/pin/reset/')
  Future<ApiResponse<dynamic>> resetTransactionPin({
    @Body() required Map<String, dynamic> payload,
  });
}
