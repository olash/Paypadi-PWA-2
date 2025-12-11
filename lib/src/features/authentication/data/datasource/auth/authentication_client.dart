import 'package:dio/dio.dart';

import 'package:paypadi/src/features/authentication/domain/DTO/responses.dart';
import 'package:retrofit/retrofit.dart';

part 'authentication_client.g.dart';

const String _basePath = "/auth";

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String baseUrl}) =
      _AuthenticationClient;

  @POST('$_basePath/register/')
  Future<CreateAccountResponse> createAccount({
    @Header("Cookie") required String cookie,
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/login/')
  Future<LoginResponse> login({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/otp/request/')
  Future<RequestForOtpResponse> requestForOTP({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/otp/verify/')
  Future<VerifyOtpResponse> verifyOTP({
    @Body() required Map<String, dynamic> payload,
  });
}
