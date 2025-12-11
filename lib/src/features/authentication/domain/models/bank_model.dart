import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_model.freezed.dart';
part 'bank_model.g.dart';

@freezed
sealed class BankModel with _$BankModel {
  const factory BankModel({
    required String name,
    required String code,
    @JsonKey(name: "active") required bool isActive,
  }) = _BankModel;

  factory BankModel.fromJson(Map<String, dynamic> json) =>
      _$BankModelFromJson(json);
}
