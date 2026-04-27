import 'dart:io';

import 'package:dio/dio.dart';
import 'package:paypadi/core/models/user_model/user_model.dart';
import 'package:paypadi/src/features/authentication/domain/responses.dart';
import 'package:retrofit/retrofit.dart';

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
  Future<UserModel> getDriverProfile();

  @PUT('$_basePath/driver/profile/')
  Future<UserModel> createDriverProfile({
    @Body() required Map<String, dynamic> payload,
  });

  @PATCH('$_basePath/driver/profile/')
  Future<UserModel> updateDriverProfile({
    @Body() required Map<String, dynamic> payload,
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

  @MultiPart()
  @PATCH("$_basePath/driver/profile/")
  Future uploadDocument({
    @Part() required File file,
    @Part(name: "name") required String fileName,
    @SendProgress() ProgressCallback? onSendProgress,
  });
}
