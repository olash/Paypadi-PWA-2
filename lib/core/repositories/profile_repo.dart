import 'dart:io';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/clients/profile_ds/profile_client.dart';
import 'package:paypadi/core/models/driver_profile_model/driver_profile_model.dart';
import 'package:paypadi/core/models/user_profile_model/user_profile_model.dart';
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/typedefs.dart';

class ProfileRepository {
  const ProfileRepository({required this.client});
  final ProfileClient client;

  FutureApiResultOf<void> setTransactionPin(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<void>>(
      () => client.setTransactionPin(payload: payload),
    );
    return response;
  }

  FutureResultOf<ApiResponse<UserProfileModel>> getAccountProfile() async {
    final response = await Result.fromAsync<ApiResponse<UserProfileModel>>(
      client.getAccountInfo,
    );
    return response;
  }

  FutureResultOf getDriverProfile() async {
    final response = await Result.fromAsync(
      client.getDriverProfile,
    );
    return response;
  }

  FutureApiResultOf<DriverProfileModel> createDriverProfile(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<DriverProfileModel>>(
      () => client.createDriverProfile(payload: payload),
    );
    return response;
  }

  FutureApiResultOf<DriverProfileModel> updateDriverProfile(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<DriverProfileModel>>(
      () => client.updateDriverProfile(payload: payload),
    );
    return response;
  }

  FutureResultOf<ApiResponse<DriverProfileModel>> uploadDocument({
    required File file,
    required String fileName,
    required DocumentCategory category,
    required void Function(int, int)? onSendProgress,
  }) async {
    Result<ApiResponse<DriverProfileModel>, Exception> response;

    switch (category) {
      case DocumentCategory.driverLicenseFront:
        response = await Result.fromAsync<ApiResponse<DriverProfileModel>>(
          () => client.uploadDocument(
            licenseFront: file,
            fileName: fileName,
            onSendProgress: onSendProgress,
          ),
        );
        break;

      case DocumentCategory.driverLicenseBack:
        response = await Result.fromAsync<ApiResponse<DriverProfileModel>>(
          () => client.uploadDocument(
            licenseBack: file,
            fileName: fileName,
            onSendProgress: onSendProgress,
          ),
        );
        break;

      case DocumentCategory.vehicleLicense:
        response = await Result.fromAsync<ApiResponse<DriverProfileModel>>(
          () => client.uploadDocument(
            vehicleReg: file,
            fileName: fileName,
            onSendProgress: onSendProgress,
          ),
        );
        break;
    }
    
    return response;
  }
}
