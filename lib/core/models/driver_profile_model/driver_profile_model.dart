import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_profile_model.freezed.dart';
part 'driver_profile_model.g.dart';

@freezed
sealed class DriverProfileModel with _$DriverProfileModel {
  const factory DriverProfileModel({
    required int id,
    @JsonKey(name: "total_rides") required int totalRides,
    @JsonKey(name: "is_approved") required bool isApproved,
    @JsonKey(name: "is_available") required bool isAvailable,
    @JsonKey(name: "submitted_for_approval") required bool documentsApproved,
    @JsonKey(name: "vehicle_make") required String vehicleMake,
    @JsonKey(name: "vehicle_model") required String vehicleModel,
    @JsonKey(name: "vehicle_year") required int vehicleYear,
    @JsonKey(name: "driver_license_number") String? licenseNumber,
    @JsonKey(name: "driver_license_expiry") String? licenseExpiryDate,
    @JsonKey(name: "license_plate") required String licensePlate,
    @JsonKey(name: "license_front") String? licenseFrontPicUrl,
    @JsonKey(name: "license_back") String? licenseBackPicUrl,
    @JsonKey(name: "vehicle_registration") String? vehicleRegistrationPicUrl,
    @JsonKey(name: "approved_at") String? approvedAt,
    @JsonKey(name: "rejection_reason") String? reasonForRejection,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
  }) = _DriverProfileModel;

  factory DriverProfileModel.fromJson(Map<String, dynamic> json) =>
      _$DriverProfileModelFromJson(json);
}
