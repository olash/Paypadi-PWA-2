// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DriverProfileModel _$DriverProfileModelFromJson(Map<String, dynamic> json) =>
    _DriverProfileModel(
      licensePlate: json['license_plate'] as String?,
      vehicleModel: json['vehicle_model'] as String?,
      driverLicenseNumber: json['driver_license_number'] as String?,
      isApproved: json['is_approved'] as bool?,
      kycStatus: json['kyc_status'] as String?,
      profilePicture: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$DriverProfileModelToJson(_DriverProfileModel instance) =>
    <String, dynamic>{
      'license_plate': ?instance.licensePlate,
      'vehicle_model': ?instance.vehicleModel,
      'driver_license_number': ?instance.driverLicenseNumber,
      'is_approved': ?instance.isApproved,
      'kyc_status': ?instance.kycStatus,
      'profile_picture': ?instance.profilePicture,
    };
