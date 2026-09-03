// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num).toInt(),
  phoneNumber: json['phone_number'] as String,
  firstName: json['first_name'] as String,
  lastName: json['last_name'] as String,
  isActive: json['is_active'] as bool,
  email: json['email'] as String?,
  profile: json['profile'] == null
      ? null
      : UserProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
  driverProfile: json['driver_profile'] == null
      ? null
      : DriverProfileModel.fromJson(
          json['driver_profile'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone_number': instance.phoneNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_active': instance.isActive,
      'email': ?instance.email,
      'profile': ?instance.profile?.toJson(),
      'driver_profile': ?instance.driverProfile?.toJson(),
    };
