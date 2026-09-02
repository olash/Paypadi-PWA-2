// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => _WalletModel(
  id: json['id'] as String,
  balance: json['balance'] as String,
  currency: json['currency'] as String,
  reservedBalance: json['reserved_balance'] as String,
  availableBalance: json['available_balance'] as String,
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String,
);

Map<String, dynamic> _$WalletModelToJson(_WalletModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'balance': instance.balance,
      'currency': instance.currency,
      'reserved_balance': instance.reservedBalance,
      'available_balance': instance.availableBalance,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
