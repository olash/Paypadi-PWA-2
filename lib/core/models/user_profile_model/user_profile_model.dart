import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
sealed class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    @JsonKey(name: 'referral_code') required String referralCode,
    @JsonKey(name: 'total_referrals') required int totalReferrals,
    @JsonKey(name: 'last_login') String? lastLogin,
    @JsonKey(name: 'kyc_status') String? kycStatus,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    String? address,
    String? city,
    String? state,
    String? country,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
