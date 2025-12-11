import 'package:dio/dio.dart';
import 'package:paypadi/src/features/authentication/domain/DTO/responses.dart';
import 'package:retrofit/retrofit.dart';

import 'package:paypadi/src/features/authentication/domain/models/driver_model.dart';

part 'profile_client.g.dart';

const String _basePath = "/auth";

@RestApi()
abstract class ProfileClient {
  factory ProfileClient(Dio dio, {String baseUrl}) = _ProfileClient;

  @GET('$_basePath/profile/')
  Future<dynamic> getUser();

  @PUT('$_basePath/profile/')
  Future<dynamic> updateUser();

  @PATCH('$_basePath/profile/')
  Future<dynamic> partiallyUpdateUser();

  @GET('$_basePath/driver/profile/')
  Future<DriverModel> getDriverProfile();

  @PUT('$_basePath/driver/profile/')
  Future<DriverModel> updateDriverProfile({
    @Body() Map<String, dynamic> payload,
  });

  @PATCH('$_basePath/driver/profile/')
  Future<DriverModel> partiallyUpdateDriverProfile({
    @Body() Map<String, dynamic> payload,
  });

  @POST('$_basePath/me/')
  Future<dynamic> getUserInfo();

  @POST('$_basePath/pin/set/')
  Future<SetPinResponse> setTransactionPin({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/password/change/')
  Future<dynamic> changePassword({
    @Body() required Map<String, dynamic> payload,
  });
}
