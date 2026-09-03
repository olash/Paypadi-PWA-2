// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    _UserProfileModel(
      referralCode: json['referral_code'] as String,
      totalReferrals: (json['total_referrals'] as num).toInt(),
      lastLogin: json['last_login'] as String?,
      kycStatus: json['kyc_status'] as String?,
      profilePicture: json['profile_picture'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$UserProfileModelToJson(_UserProfileModel instance) =>
    <String, dynamic>{
      'referral_code': instance.referralCode,
      'total_referrals': instance.totalReferrals,
      'last_login': ?instance.lastLogin,
      'kyc_status': ?instance.kycStatus,
      'profile_picture': ?instance.profilePicture,
      'address': ?instance.address,
      'city': ?instance.city,
      'state': ?instance.state,
      'country': ?instance.country,
    };
