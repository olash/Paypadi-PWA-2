// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bank_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserBankAccountModel _$UserBankAccountModelFromJson(
  Map<String, dynamic> json,
) => _UserBankAccountModel(
  number: json['account_number'] as String,
  name: json['account_name'] as String,
  bankName: json['bank_name'] as String,
  bankCode: json['bank_code'] as String,
  assigned: json['assigned'] as bool?,
  verified: json['verified'] as bool?,
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$UserBankAccountModelToJson(
  _UserBankAccountModel instance,
) => <String, dynamic>{
  'account_number': instance.number,
  'account_name': instance.name,
  'bank_name': instance.bankName,
  'bank_code': instance.bankCode,
  'assigned': ?instance.assigned,
  'verified': ?instance.verified,
  'currency': ?instance.currency,
};
