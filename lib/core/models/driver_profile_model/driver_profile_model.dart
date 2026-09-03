import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_profile_model.freezed.dart';
part 'driver_profile_model.g.dart';

@freezed
sealed class DriverProfileModel with _$DriverProfileModel {
  const factory DriverProfileModel({
    @JsonKey(name: 'license_plate') String? licensePlate,
    @JsonKey(name: 'vehicle_model') String? vehicleModel,
    @JsonKey(name: 'driver_license_number') String? driverLicenseNumber,
    @JsonKey(name: 'is_approved') bool? isApproved,
    @JsonKey(name: 'kyc_status') String? kycStatus,
    @JsonKey(name: 'profile_picture') String? profilePicture,
  }) = _DriverProfileModel;

  factory DriverProfileModel.fromJson(Map<String, dynamic> json) =>
      _$DriverProfileModelFromJson(json);
}
