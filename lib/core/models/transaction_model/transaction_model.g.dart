// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      amount: (json['amount'] as num).toInt(),
      reference: json['reference'] as String,
      recipient: json['recipient'] as String,
      recipientAccount: json['recipient_name'] as String,
      createdAt: json['created_at'] as String,
      paymentType: json['payment_type'] as String,
      type: $enumDecode(
        _$TransactionTypeEnumMap,
        json['transaction_type'],
        unknownValue: TransactionType.unknown,
      ),
    );

Map<String, dynamic> _$TransactionModelToJson(_TransactionModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'reference': instance.reference,
      'recipient': instance.recipient,
      'recipient_name': instance.recipientAccount,
      'created_at': instance.createdAt,
      'payment_type': instance.paymentType,
      'transaction_type': _$TransactionTypeEnumMap[instance.type]!,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.transfer: 'transfer',
  TransactionType.deposit: 'deposit',
  TransactionType.withdrawal: 'withdrawal',
  TransactionType.unknown: 'unknown',
};

_TransactionHistoryModel _$TransactionHistoryModelFromJson(
  Map<String, dynamic> json,
) => _TransactionHistoryModel(
  id: json['id'] as String,
  amount: json['amount'] as String,
  reference: json['reference'] as String,
  description: json['description'] as String,
  metadata: TransactionHistoryMetadata.fromJson(
    json['metadata'] as Map<String, dynamic>,
  ),
  status: $enumDecode(
    _$TransactionStatusEnumMap,
    json['status'],
    unknownValue: TransactionStatus.failure,
  ),
  type: $enumDecode(
    _$TransactionTypeEnumMap,
    json['transaction_type'],
    unknownValue: TransactionType.unknown,
  ),
  createdAt: json['created_at'] as String,
  senderName: json['sender_name'] as String,
  recipientName: json['recipient_name'] as String,
  transactionFee: json['fee_amount'] as String,
);

Map<String, dynamic> _$TransactionHistoryModelToJson(
  _TransactionHistoryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'reference': instance.reference,
  'description': instance.description,
  'metadata': instance.metadata.toJson(),
  'status': _$TransactionStatusEnumMap[instance.status]!,
  'transaction_type': _$TransactionTypeEnumMap[instance.type]!,
  'created_at': instance.createdAt,
  'sender_name': instance.senderName,
  'recipient_name': instance.recipientName,
  'fee_amount': instance.transactionFee,
};

const _$TransactionStatusEnumMap = {
  TransactionStatus.success: 'success',
  TransactionStatus.pending: 'pending',
  TransactionStatus.completed: 'completed',
  TransactionStatus.failure: 'failure',
};

_TransactionHistoryMetadata _$TransactionHistoryMetadataFromJson(
  Map<String, dynamic> json,
) => _TransactionHistoryMetadata(
  receipientAccount: json['recipient_account'] as String?,
  receipientBankCode: json['recipient_bank_code'] as String?,
  gatewayReference: json['gateway_reference'] as String?,
  isPinVerified: json['pin_verified'] as bool?,
  recipientPhone: json['recipient_phone'] as String?,
  initiatedBy: json['initiated_by'] as String?,
);

Map<String, dynamic> _$TransactionHistoryMetadataToJson(
  _TransactionHistoryMetadata instance,
) => <String, dynamic>{
  'recipient_account': ?instance.receipientAccount,
  'recipient_bank_code': ?instance.receipientBankCode,
  'gateway_reference': ?instance.gatewayReference,
  'pin_verified': ?instance.isPinVerified,
  'recipient_phone': ?instance.recipientPhone,
  'initiated_by': ?instance.initiatedBy,
};
