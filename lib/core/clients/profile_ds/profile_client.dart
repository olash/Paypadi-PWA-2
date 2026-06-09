import 'dart:io';

import 'package:dio/dio.dart';
import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/driver_profile_model/driver_profile_model.dart';
import 'package:paypadi/core/models/user_profile_model/user_profile_model.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_client.g.dart';

const String _basePath = '/auth';

@RestApi()
abstract class ProfileClient {
  factory ProfileClient(Dio dio, {String baseUrl}) = _ProfileClient;

  @GET('$_basePath/profile/')
  Future<ApiResponse> getRider();

  @PUT('$_basePath/profile/')
  Future<ApiResponse> updateRider();

  @PATCH('$_basePath/profile/')
  Future<ApiResponse> partiallyUpdateRider();

  @GET('$_basePath/driver/profile/')
  Future<ApiResponse<DriverProfileModel>> getDriverProfile();

  @PUT('$_basePath/driver/profile/')
  Future<ApiResponse<DriverProfileModel>> createDriverProfile({
    @Body() required Map<String, dynamic> payload,
  });

  @PATCH('$_basePath/driver/profile/')
  Future<ApiResponse<DriverProfileModel>> updateDriverProfile({
    @Body() required Map<String, dynamic> payload,
  });

  @GET('$_basePath/me/')
  Future<ApiResponse<UserProfileModel>> getAccountInfo();

  @POST('$_basePath/pin/set/')
  Future<ApiResponse<void>> setTransactionPin({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/password/change/')
  Future<ApiResponse> changePassword({
    @Body() required Map<String, dynamic> payload,
  });

  @MultiPart()
  @PATCH('$_basePath/driver/profile/')
  Future<ApiResponse<DriverProfileModel>> uploadDocument({
    @Part(name: 'file_name') required String fileName, @Part(name: 'license_front') File? licenseFront,
    @Part(name: 'license_back') File? licenseBack,
    @Part(name: 'vehicle_registration') File? vehicleReg,
    @SendProgress() ProgressCallback? onSendProgress,
  });
}
