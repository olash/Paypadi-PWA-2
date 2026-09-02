// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    _UserProfileModel(
      id: json['id'] as String,
      role: $enumDecode(
        _$AccountTypeEnumMap,
        json['role'],
        unknownValue: AccountType.unknown,
      ),
      phoneNumber: json['phone_number'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      isActive: json['is_active'] as bool,
      phoneVerified: json['verified_phone'] as bool,
      dateJoined: json['date_joined'] as String,
      referralCode: json['referral_code'] as String,
      totalReferrals: (json['total_referrals'] as num).toInt(),
      email: json['email'] as String?,
      lastLogin: json['last_login'] as String?,
      driverProfile: json['driver_profile'] as String?,
      kycStatus: json['kyc_status'] as String?,
      profile: json['profile'] == null
          ? null
          : ProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserProfileModelToJson(_UserProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': _$AccountTypeEnumMap[instance.role]!,
      'phone_number': instance.phoneNumber,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_active': instance.isActive,
      'verified_phone': instance.phoneVerified,
      'date_joined': instance.dateJoined,
      'referral_code': instance.referralCode,
      'total_referrals': instance.totalReferrals,
      'email': ?instance.email,
      'last_login': ?instance.lastLogin,
      'driver_profile': ?instance.driverProfile,
      'kyc_status': ?instance.kycStatus,
      'profile': ?instance.profile?.toJson(),
    };

const _$AccountTypeEnumMap = {
  AccountType.rider: 'rider',
  AccountType.driver: 'driver',
  AccountType.unknown: 'unknown',
};

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      id: (json['id'] as num).toInt(),
      emailVerified: json['is_email_verified'] as bool,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      dob: json['date_of_birth'] as String?,
      profilePicture: json['profile_picture'] as String?,
      idDocument: json['id_document'] as String?,
      idDocumentType: json['id_document_type'] as String?,
      idDocumentNumber: json['id_document_number'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_email_verified': instance.emailVerified,
      'address': ?instance.address,
      'city': ?instance.city,
      'state': ?instance.state,
      'country': ?instance.country,
      'date_of_birth': ?instance.dob,
      'profile_picture': ?instance.profilePicture,
      'id_document': ?instance.idDocument,
      'id_document_type': ?instance.idDocumentType,
      'id_document_number': ?instance.idDocumentNumber,
      'created_at': ?instance.createdAt,
      'updated_at': ?instance.updatedAt,
    };
