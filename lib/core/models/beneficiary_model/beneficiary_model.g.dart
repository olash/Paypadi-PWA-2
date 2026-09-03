// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BeneficiaryModel _$BeneficiaryModelFromJson(Map<String, dynamic> json) =>
    _BeneficiaryModel(
      id: json['id'] as String,
      accountNumber: json['account_number'] as String,
      accountName: json['account_name'] as String,
      bankName: json['bank_name'] as String,
      bankCode: json['bank_code'] as String,
      isPaypadiAccount: json['is_paypadi_account'] as bool,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$BeneficiaryModelToJson(_BeneficiaryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_number': instance.accountNumber,
      'account_name': instance.accountName,
      'bank_name': instance.bankName,
      'bank_code': instance.bankCode,
      'is_paypadi_account': instance.isPaypadiAccount,
      'created_at': instance.createdAt,
    };
