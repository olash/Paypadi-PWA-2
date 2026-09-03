import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paypadi/core/utils/enums.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
sealed class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    required String id,
    @JsonKey(
      name: 'transaction_type',
      unknownEnumValue: TransactionType.unknown,
    )
    required TransactionType transactionType,
    required String amount,
    @JsonKey(unknownEnumValue: TransactionStatus.failure)
    required TransactionStatus status,
    required String reference,
    required String description,
    required Map<String, dynamic> metadata,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
