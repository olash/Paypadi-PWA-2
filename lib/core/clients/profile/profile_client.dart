import 'dart:io';

import 'package:dio/dio.dart';
import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/clients/profile/i_profile_client.dart';
import 'package:paypadi/core/models/driver_profile_model/driver_profile_model.dart';
import 'package:paypadi/core/models/user_model/user_model.dart';
import 'package:paypadi/core/models/user_profile_model/user_profile_model.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_client.g.dart';

const String _basePath = '/auth';

@RestApi()
abstract class ProfileClient implements IProfileClient {
  factory ProfileClient(Dio dio, {String baseUrl}) = _ProfileClient;

  @override
  @GET('$_basePath/profile/')
  Future<ApiResponse<UserProfileModel>> getRider();

  @override
  @PUT('$_basePath/profile/')
  Future<ApiResponse<UserProfileModel>> updateRider();

  @override
  @PATCH('$_basePath/profile/')
  Future<ApiResponse<UserProfileModel>> partiallyUpdateRider();

  @override
  @GET('$_basePath/driver/profile/')
  Future<ApiResponse<DriverProfileModel>> getDriverProfile();

  @override
  @PUT('$_basePath/driver/profile/')
  Future<ApiResponse<DriverProfileModel>> createDriverProfile({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @PATCH('$_basePath/driver/profile/')
  Future<ApiResponse<DriverProfileModel>> updateDriverProfile({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @GET('$_basePath/me/')
  Future<ApiResponse<UserModel>> getAccountInfo();

  @override
  @POST('$_basePath/pin/set/')
  Future<ApiResponse<void>> setTransactionPin({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/password/change/')
  Future<ApiResponse<dynamic>> changePassword({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @MultiPart()
  @PATCH('$_basePath/driver/profile/')
  Future<ApiResponse<DriverProfileModel>> uploadDocument({
    @Part(name: 'file_name') required String fileName,
    @Part(name: 'license_front') File? licenseFront,
    @Part(name: 'license_back') File? licenseBack,
    @Part(name: 'vehicle_registration') File? vehicleReg,
    @SendProgress() ProgressCallback? onSendProgress,
  });
}
