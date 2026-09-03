// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      id: json['id'] as String,
      transactionType: $enumDecode(
        _$TransactionTypeEnumMap,
        json['transaction_type'],
        unknownValue: TransactionType.unknown,
      ),
      amount: json['amount'] as String,
      status: $enumDecode(
        _$TransactionStatusEnumMap,
        json['status'],
        unknownValue: TransactionStatus.failure,
      ),
      reference: json['reference'] as String,
      description: json['description'] as String,
      metadata: json['metadata'] as Map<String, dynamic>,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$TransactionModelToJson(_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transaction_type': _$TransactionTypeEnumMap[instance.transactionType]!,
      'amount': instance.amount,
      'status': _$TransactionStatusEnumMap[instance.status]!,
      'reference': instance.reference,
      'description': instance.description,
      'metadata': instance.metadata,
      'created_at': instance.createdAt,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.transfer: 'transfer',
  TransactionType.deposit: 'deposit',
  TransactionType.withdrawal: 'withdrawal',
  TransactionType.unknown: 'unknown',
};

const _$TransactionStatusEnumMap = {
  TransactionStatus.success: 'success',
  TransactionStatus.pending: 'pending',
  TransactionStatus.completed: 'completed',
  TransactionStatus.failure: 'failure',
};
