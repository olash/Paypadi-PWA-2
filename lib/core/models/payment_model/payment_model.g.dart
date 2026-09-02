// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    _PaymentModel(
      amount: json['amount'] as String,
      reference: json['transaction_reference'] as String,
      authorizationUrl: json['authorization_url'] as String,
      transactionId: json['transaction_id'] as String,
      createdAt: json['created_at'] as String,
      paymentType: $enumDecode(
        _$TransactionTypeEnumMap,
        json['payment_type'],
        unknownValue: TransactionType.unknown,
      ),
    );

Map<String, dynamic> _$PaymentModelToJson(_PaymentModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'transaction_reference': instance.reference,
      'authorization_url': instance.authorizationUrl,
      'transaction_id': instance.transactionId,
      'created_at': instance.createdAt,
      'payment_type': _$TransactionTypeEnumMap[instance.paymentType]!,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.transfer: 'transfer',
  TransactionType.deposit: 'deposit',
  TransactionType.withdrawal: 'withdrawal',
  TransactionType.unknown: 'unknown',
};
