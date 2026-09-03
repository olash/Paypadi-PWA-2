import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary_model.freezed.dart';
part 'beneficiary_model.g.dart';

@freezed
sealed class BeneficiaryModel with _$BeneficiaryModel {
  const factory BeneficiaryModel({
    required String id,
    @JsonKey(name: 'account_number') required String accountNumber,
    @JsonKey(name: 'account_name') required String accountName,
    @JsonKey(name: 'bank_name') required String bankName,
    @JsonKey(name: 'bank_code') required String bankCode,
    @JsonKey(name: 'is_paypadi_account') required bool isPaypadiAccount,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _BeneficiaryModel;

  factory BeneficiaryModel.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryModelFromJson(json);
}
