import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/services/api_service.dart' show dioProvider;
import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/responses.dart/responses.dart';
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
  Future<DriverModel> updateDriverProfile({@Body() dynamic payload});

  @PATCH('$_basePath/driver/profile/')
  Future<DriverModel> partiallyUpdateDriverProfile({@Body() dynamic payload});

  @POST('$_basePath/me/')
  Future<dynamic> getUserInfo();

  @POST('$_basePath/pin/set/')
  Future<dynamic> setTransactionPin({
    @Body() required SetPinPayload payload,
  });

  @POST('$_basePath/password/change/')
  Future<dynamic> changePassword({
    @Body() required PasswordChangePayload payload,
  });
}
