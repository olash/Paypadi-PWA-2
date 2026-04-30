import 'package:dio/dio.dart';
import 'package:paypadi/core/api/response/api_response.dart';

import 'package:paypadi/src/features/authentication/domain/responses.dart';
import 'package:retrofit/retrofit.dart';

part 'authentication_client.g.dart';

const String _basePath = "/auth";

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String baseUrl}) =
      _AuthenticationClient;

  @POST('$_basePath/register/')
  Future<ApiResponse<CreateAccountResponse>> createAccount({
    @Header("Cookie") required String cookie,
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/login/')
  Future<ApiResponse<LoginResponse>> login({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/otp/request/')
  Future<ApiResponse<RequestForOtpResponse>> requestForOTP({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/otp/verify/')
  Future<ApiResponse<VerifyOtpResponse>> verifyOTP({
    @Body() required Map<String, dynamic> payload,
  });
}
