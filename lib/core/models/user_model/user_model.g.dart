// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  role: json['role'] as String,
  phoneNumber: json['phone_number'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  isActive: json['is_active'] as bool,
  phoneVerified: json['verified_phone'] as bool,
  dateJoined: json['date_joined'] as String,
  email: json['email'] as String?,
  isDriver: json['is_driver'] as bool?,
  driverId: json['driver_id'] as String?,
  isApproved: json['is_approved'] as bool?,
  licensePlate: json['license_plate'] as String?,
  vehicleModel: json['vehicle_model'] as String?,
  driverLicenseNumber: json['driver_license_number'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': instance.role,
      'phone_number': instance.phoneNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_active': instance.isActive,
      'verified_phone': instance.phoneVerified,
      'date_joined': instance.dateJoined,
      'email': ?instance.email,
      'is_driver': ?instance.isDriver,
      'driver_id': ?instance.driverId,
      'is_approved': ?instance.isApproved,
      'license_plate': ?instance.licensePlate,
      'vehicle_model': ?instance.vehicleModel,
      'driver_license_number': ?instance.driverLicenseNumber,
    };
