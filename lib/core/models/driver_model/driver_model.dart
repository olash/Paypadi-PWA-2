import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_model.freezed.dart';
part 'driver_model.g.dart';

@freezed
sealed class DriverModel with _$DriverModel {
  const factory DriverModel({
    required String id,
    required String rating,
    @JsonKey(name: "vehicle_make") required String vehicleMake,
    @JsonKey(name: "vehicle_model") required String firstName,
    @JsonKey(name: "vehicle_year") required String lastName,
    @JsonKey(name: "driver_license_number") required String driverLicenseNumber,
    @JsonKey(name: "driver_license_expiry") required String driverLicenseExpiry,
    @JsonKey(name: "license_plate") required String plateNumber,
    @JsonKey(name: "is_approved") required bool isApproved,
    @JsonKey(name: "is_available") required bool isAvailable,
    @JsonKey(name: "current_location_lat") required String currentLat,
    @JsonKey(name: "current_location_lng") required String currentLng,
    @JsonKey(name: "total_rides") required int totalRides,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
  }) = _DriverModel;

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);
}
