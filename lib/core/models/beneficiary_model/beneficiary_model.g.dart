// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryModel _$BeneficiaryModelFromJson(Map<String, dynamic> json) =>
    _BeneficiaryModel(
      type: json['beneficiary_type'] as String,
      accountNumber: json['account_number'] as String,
      accountName: json['account_name'] as String,
      id: json['id'] as String?,
      bankName: json['bank_name'] as String?,
      bankCode: json['bank_code'] as String?,
      isSaved: json['is_saved'] as bool?,
      isVerified: json['is_verified'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      lastTransaction: json['last_transaction_at'] as String?,
    );

Map<String, dynamic> _$BeneficiaryModelToJson(_BeneficiaryModel instance) =>
    <String, dynamic>{
      'beneficiary_type': instance.type,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'id': ?instance.id,
      'bank_name': ?instance.bankName,
      'bank_code': ?instance.bankCode,
      'is_saved': ?instance.isSaved,
      'is_verified': ?instance.isVerified,
      'created_at': ?instance.createdAt,
      'updated_at': ?instance.updatedAt,
      'last_transaction_at': ?instance.lastTransaction,
    };
