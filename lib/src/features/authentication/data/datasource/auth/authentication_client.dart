import 'package:dio/dio.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/responses.dart/responses.dart';
import 'package:retrofit/retrofit.dart';


part 'authentication_client.g.dart';

const String _basePath = "/auth";

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio, {String baseUrl}) =
      _AuthenticationClient;

  @POST('$_basePath/register/')
  Future<RegisterUserResponse> createAccount({
    @Header("Cookie") required String cookie,
    @Body() required RegisterPayload payload,
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
}
