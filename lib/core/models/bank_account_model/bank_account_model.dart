import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account_model.freezed.dart';
part 'bank_account_model.g.dart';

@freezed
sealed class BankAccountModel with _$BankAccountModel {
  const factory BankAccountModel({
    required bool verified,
    @JsonKey(name: "account_number") required String number,
    @JsonKey(name: "account_name") required String name,
    @JsonKey(name: "bank_code") required String bankCode,
    @JsonKey(name: "bank_name") required String bankName,
  }) = _BankAccountModel;

  factory BankAccountModel.fromJson(Map<String, dynamic> json) =>
      _$BankAccountModelFromJson(json);
}
