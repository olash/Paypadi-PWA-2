// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankModel _$BankModelFromJson(Map<String, dynamic> json) => _BankModel(
  name: json['name'] as String,
  code: json['code'] as String,
  isActive: json['active'] as bool,
);

Map<String, dynamic> _$BankModelToJson(_BankModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'active': instance.isActive,
    };

_VerifiedBankAccountModel _$VerifiedBankAccountModelFromJson(
  Map<String, dynamic> json,
) => _VerifiedBankAccountModel(
  accountNumber: json['account_number'] as String,
  accountName: json['account_name'] as String,
  bankId: (json['bank_id'] as num).toInt(),
);

Map<String, dynamic> _$VerifiedBankAccountModelToJson(
  _VerifiedBankAccountModel instance,
) => <String, dynamic>{
  'account_number': instance.accountNumber,
  'account_name': instance.accountName,
  'bank_id': instance.bankId,
};
