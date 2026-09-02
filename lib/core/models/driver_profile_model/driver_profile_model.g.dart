// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DriverProfileModel _$DriverProfileModelFromJson(Map<String, dynamic> json) =>
    _DriverProfileModel(
      id: (json['id'] as num).toInt(),
      totalRides: (json['total_rides'] as num).toInt(),
      isApproved: json['is_approved'] as bool,
      isAvailable: json['is_available'] as bool,
      documentsApproved: json['submitted_for_approval'] as bool,
      vehicleMake: json['vehicle_make'] as String,
      vehicleModel: json['vehicle_model'] as String,
      vehicleYear: (json['vehicle_year'] as num).toInt(),
      licensePlate: json['license_plate'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      licenseNumber: json['driver_license_number'] as String?,
      licenseExpiryDate: json['driver_license_expiry'] as String?,
      licenseFrontPicUrl: json['license_front'] as String?,
      licenseBackPicUrl: json['license_back'] as String?,
      vehicleRegistrationPicUrl: json['vehicle_registration'] as String?,
      approvedAt: json['approved_at'] as String?,
      reasonForRejection: json['rejection_reason'] as String?,
    );

Map<String, dynamic> _$DriverProfileModelToJson(_DriverProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_rides': instance.totalRides,
      'is_approved': instance.isApproved,
      'is_available': instance.isAvailable,
      'submitted_for_approval': instance.documentsApproved,
      'vehicle_make': instance.vehicleMake,
      'vehicle_model': instance.vehicleModel,
      'vehicle_year': instance.vehicleYear,
      'license_plate': instance.licensePlate,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'driver_license_number': ?instance.licenseNumber,
      'driver_license_expiry': ?instance.licenseExpiryDate,
      'license_front': ?instance.licenseFrontPicUrl,
      'license_back': ?instance.licenseBackPicUrl,
      'vehicle_registration': ?instance.vehicleRegistrationPicUrl,
      'approved_at': ?instance.approvedAt,
      'rejection_reason': ?instance.reasonForRejection,
    };
