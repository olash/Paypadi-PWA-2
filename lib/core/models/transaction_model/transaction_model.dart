import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
sealed class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String id,
    required String amount,
    required String status,
    required String reference,
    required String description,
    @JsonKey(name: "recipient_account_number")
    required String recipientAccountNo,
    @JsonKey(name: "transaction_type") required String type,
    @JsonKey(name: "recipient_phone") required String recipientPhone,
    @JsonKey(name: "recipient_bank_code") required String recipientBankCode,
    @JsonKey(name: "created_at") required String createdAt,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
