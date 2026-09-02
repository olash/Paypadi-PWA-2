// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_lookup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountLookupModel _$AccountLookupModelFromJson(Map<String, dynamic> json) =>
    _AccountLookupModel(
      role: json['role'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String,
      accountNumber: json['account_number'] as String,
      bankCode: json['bank_code'] as String?,
      profilePicUrl: json['profile_picture'] as String?,
    );

Map<String, dynamic> _$AccountLookupModelToJson(_AccountLookupModel instance) =>
    <String, dynamic>{
      'role': instance.role,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'account_number': instance.accountNumber,
      'bank_code': ?instance.bankCode,
      'profile_picture': ?instance.profilePicUrl,
    };
