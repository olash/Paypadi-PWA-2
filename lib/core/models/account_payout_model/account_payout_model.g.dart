// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_payout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountPayoutModel _$AccountPayoutModelFromJson(Map<String, dynamic> json) =>
    _AccountPayoutModel(
      id: (json['id'] as num).toInt(),
      accountType: json['account_type'] as String,
      accountName: json['account_name'] as String,
      accountNumber: json['account_number'] as String,
      bankName: json['bank_name'] as String,
      bankCode: json['bank_code'] as String,
      isPrimary: json['is_primary'] as bool,
      isVerified: json['is_verified'] as bool,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$AccountPayoutModelToJson(_AccountPayoutModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_type': instance.accountType,
      'account_name': instance.accountName,
      'account_number': instance.accountNumber,
      'bank_name': instance.bankName,
      'bank_code': instance.bankCode,
      'is_primary': instance.isPrimary,
      'is_verified': instance.isVerified,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
