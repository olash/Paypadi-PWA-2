import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel.requestForOtp({
    required String id,
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    required String email,
    @JsonKey(name: "is_active") required bool isActive,
    @JsonKey(name: "verified_phone") required bool phoneIsVerified,
    required String role,
    @JsonKey(name: "date_joined") required String dateJoined,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
