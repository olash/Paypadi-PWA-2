import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
sealed class WalletModel with _$WalletModel {
  const factory WalletModel({
    required String id,
    required String balance,
    required String currency,
    @JsonKey(name: "reserved_balance") required String reservedBalance,
    @JsonKey(name: "available_balance") required String availableBalance,
    @JsonKey(name: "created_at") required String createdAt,
    @JsonKey(name: "updated_at") required String updatedAt,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);
}
